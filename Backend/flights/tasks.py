from celery import shared_task
from .models import Flight

@shared_task
def check_flight_status(flight_id):
    flight = Flight.objects.get(id=flight_id)
    # Logic to check flight status and notify user
    print(f"Checking status for flight {flight.flight_id}")
