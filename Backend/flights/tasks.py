from celery import shared_task
from django.conf import settings
from twilio.rest import Client
from django.core.mail import send_mail
from .models import User  # Update import according to your user model

# Utility functions for sending notifications
def send_email_notification(subject, message, recipient_list):
    send_mail(
        subject,
        message,
        settings.EMAIL_HOST_USER,
        recipient_list,
        fail_silently=False,
    )

def send_sms_notification(to_phone_number, message):
    client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN)
    client.messages.create(
        body=message,
        from_=settings.TWILIO_PHONE_NUMBER,
        to=to_phone_number,
    )

# Celery task for sending flight notifications
@shared_task
def notify_users_about_flight(flight_id):
    # Fetch user details based on flight_id
    users = User.objects.filter(flight__id=flight_id)  # Adjust query as needed

    for user in users:
        # Send email
        send_email_notification(
            subject="Flight Update",
            message=f"Your flight {flight_id} has been updated.",
            recipient_list=[user.email]
        )
        
        # Send SMS
        send_sms_notification(
            to_phone_number=user.phone_number,
            message=f"Flight update: Check your email for details regarding flight {flight_id}."
        )

    return "Notifications sent"
