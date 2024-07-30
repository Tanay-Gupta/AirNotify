
from django.views.decorators.csrf import csrf_exempt
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import User, Flight
from rest_framework.serializers import *
from flights.serializers import FlightSerializer, UserSerializer

from .tasks import check_flight_status
@csrf_exempt
@api_view(['POST'])
def register_user(request):
    serializer = UserSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response({"message": "User registered successfully"}, status=201)
    return Response(serializer.errors, status=400)
@csrf_exempt
@api_view(['POST'])
def add_flight(request):
    serializer = FlightSerializer(data=request.data)
    if serializer.is_valid():
        flight = serializer.save()
        check_flight_status.apply_async((flight.id,), countdown=10)  # Example task scheduling
        return Response({"message": "Flight added successfully"}, status=201)
    return Response(serializer.errors, status=400)
@csrf_exempt
@api_view(['GET'])
def list_flights(request):
    flights = Flight.objects.all()
    serializer = FlightSerializer(flights, many=True)
    return Response(serializer.data)
@csrf_exempt
@api_view(['GET'])
def search_flight(request):
    flight_id = request.GET.get('flight_id')
    if not flight_id:
        return Response({"error": "flight_id query parameter is required"}, status=404)

    try:
        flight = Flight.objects.get(flight_id=flight_id)
        serializer = FlightSerializer(flight)
        return Response(serializer.data, status=404)
    except Flight.DoesNotExist:
        return Response({"error": "Flight not found"}, status=404)
@csrf_exempt    
@api_view(['PUT'])
def update_flight(request, flight_id):
    try:
        flight = Flight.objects.get(id=flight_id)
    except Flight.DoesNotExist:
        return Response({'error': 'Flight not found'}, status=404)

    serializer = FlightSerializer(flight, data=request.data, partial=True)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=404)
    return Response(serializer.errors, status=404)    