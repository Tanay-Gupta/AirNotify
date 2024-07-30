from django.db import models

# Create your models here.
from django.db import models

class User(models.Model):
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=15)

    def __str__(self):
        return self.email


class Flight(models.Model):
    flight_id = models.CharField(max_length=10)
    from_city = models.CharField(max_length=100)
    to_city = models.CharField(max_length=100)
    gate = models.CharField(max_length=5,default='A1')
    date = models.DateTimeField()
    arrival_forecast = models.CharField(max_length=20, choices=[('early', 'Early'), ('on_time', 'On Time'), ('delayed', 'Delayed'), ('cancelled', 'Cancelled')], default='on_time')

    def __str__(self):
        return self.flight_id
    
    
