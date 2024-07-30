
# AirNotify: Flight Status Notification App


This project is a complete application that provides real-time flight status updates and notifications to passengers. The backend is built with Django and the frontend is developed using Flutter. Additionally, the frontend can be easily migrated to React.js.tree /f




## Screenshots

![App Screenshot](Screenshots/1.jpg)
![App Screenshot](Screenshots/2.jpg)
![App Screenshot](Screenshots/3.jpg)
![App Screenshot](Screenshots/4.jpg)
![App Screenshot](Screenshots/5.jpg)
![App Screenshot](Screenshots/6.jpg)






## Features

##### Real-time Updates

- **Flight Status Monitoring:** The app continuously monitors the status of flights, providing real-time updates on delays, cancellations, and gate changes.
- **Visual Indicators:** Clear visual cues indicate the current status of the flight, helping passengers to stay informed at a glance.

##### Push Notifications

- **Instant Alerts:** Passengers receive immediate notifications for any changes in their flight status.
- **Multiple Channels:** Notifications can be sent via SMS, email, and in-app notifications, ensuring passengers are always informed.
- **Customizable Preferences:** Users can customize their notification preferences, choosing the channels and types of updates they wish to receive.

##### Integration with Airport Systems

- **Mock Data for Testing:** During development, mock data is provided to simulate real-world scenarios and test the app's functionality.
- **Scalable Architecture:** Designed to handle a large number of flights and users, the app can scale to meet the needs of major airports.

##### Flight Search and Details

- **Flight Search:** Users can search for flights using flight numbers or other criteria to get detailed information.
- **Flight Details:** Detailed information about each flight, including departure and arrival times, gate numbers, and terminal information.

##### Admin Panel

- **Flight Management:** Admins can add, update, and delete flight information through a dedicated admin APIs.


##### Cross-Platform Support

- **Flutter Frontend:** The app is built using Flutter, allowing it to run seamlessly on both iOS and Android devices.
- **Responsive Design:** The user interface is designed to be responsive and user-friendly across various devices and screen sizes.





## Technologies Used

**Frontend:** Flutter

**Backend:** Django

**Database:** SQLite (for development), PostgreSQL (for production)

**Asynchronous Task Queue:** Celery

**Message Broker:** Redis

**Notifications:** Firebase Cloud Messaging


## Prerequisites
- Python 3.8+
- Flutter 2.0+
- Redis
- PostgreSQL (optional for production)
- Node.js (for frontend development)
## Installation

### Backend (Django)

- Clone the repository:
   ```sh
   git clone https://github.com/yourusername/flight-status-notification-app.git
   cd flight-status-notification-app/backend
- Create a virtual environment and activate it:
   ```sh
   pip install -r requirements.txt

- Install the required packages:
   ```sh
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`

- Create a virtual environment and activate it and Create a .env file in the backend directory and add your database and Redis configuration:
   ```sh
   DATABASE_URL=postgres://user:password@localhost:5432/flight_status
   REDIS_URL=redis://localhost:6379/0

- Apply migrations and create a superuser:
   ```sh
   python manage.py migrate
   python manage.py createsuperuser

- Start the development server:
   ```sh
   python manage.py runserver

- Start Celery worker:
   ```sh
   celery -A backend worker -l info
   ```

### Frontend (Flutter)
- Navigate to the frontend directory:
   ```sh
   cd flight-status-app/frontend
   ```
- Install dependencies:
   ```sh
   flutter pub get
   ```
- Run the app:
   ```sh
   flutter run
   ```       
## API Endpoints

### Backend
- GET /flights/: Get list of all flights.
- GET /flights/<flight_id>: Get details of a specific flight.
- POST /flights/add_flight/: Add a new flight.
- POST /flights/update_status/<flight_id>: Update the status of a specific flight.

## Connecting Flutter App to Django Backend

#### 1. Update lib/services/api_service.dart with the correct base URL:
```static const String baseUrl = 'http://127.0.0.1:8000';```

#### 2. Handle CORS in Django:
```pip install django-cors-headers```

#### 3. Running Redis on Windows:
```docker run -d -p 6379:6379 redis```

## Project Structure

```
flight-status-app/
├── backend/
│   ├── flights/
│   │   ├── migrations/
│   │   ├── __init__.py
│   │   ├── admin.py
│   │   ├── apps.py
│   │   ├── models.py
│   │   ├── serializers.py
│   │   ├── tasks.py
│   │   ├── urls.py
│   │   └── views.py
│   ├── backend/
│   │   ├── __init__.py
│   │   ├── settings.py
│   │   ├── urls.py
│   │   └── wsgi.py
│   ├── manage.py
│   ├── celery.py
│   ├── requirements.txt
│   └── .env
└── frontend/
    ├── lib/
        │   main.dart
        │
        ├─── components/  (New folder for reusable UI elements)
        │       ├── box1.dart
        │       └── box2.dart
        │
        ├─── history/  (New folder for history-related screens and components)
        │       ├── history.dart
        │       └── components/  (New folder for reusable components within history)
        │           └── ...  (Add specific components as needed)
        │
        ├─── home/  (New folder for home screen and components)
        │       ├── home.dart
        │       └── components/  (New folder for reusable components within home)
        │           ├── flight_status.dart
        │           └── loyalty_points.dart
        │
        ├─── model/  (New folder for data models)
        │       └── ...  (Add your data model files here)
        │
        ├─── screen/  (Folder for screens)
        │       ├── splashScreen.dart
        │       └── tab_bar.dart
        │
        ├─── search/  (New folder for search-related screens)
        │       └── search.dart
        │
        └─── services/
                api_service.dart
                display_payload_page.dart  (Assuming this is a service)
                notification.dart
    └── pubspec.yaml
```

