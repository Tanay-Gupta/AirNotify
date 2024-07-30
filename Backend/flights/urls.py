from django.urls import path
from .views import register_user, add_flight,list_flights,search_flight,update_flight

urlpatterns = [
    path('register/', register_user, name='register_user'),
    path('add_flight/', add_flight, name='add_flight'),
    path('list_flights/', list_flights, name='list_flights'),
    path('search_flight/', search_flight, name='search_flight'),
    path('update_flight/<int:flight_id>/', update_flight, name='update_flight'),
]
