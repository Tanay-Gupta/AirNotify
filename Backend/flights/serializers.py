from rest_framework import serializers
from .models import User, Flight

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'email', 'phone']

class FlightSerializer(serializers.ModelSerializer):
    class Meta:
        model = Flight
        fields = ['id', 'flight_id', 'from_city', 'to_city', 'date',"arrival_forecast","gate"]
