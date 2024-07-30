import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  // Method to get all flights
  Future<List<dynamic>> getAllFlights() async {
    print("step 1");
    final response = await http.get(Uri.parse('$baseUrl/flights/list_flights/'));

    if (response.statusCode == 200) {
      print("mai aaya");
      print(response);
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load flights');
    }
  }

  // Method to get flight details by flight_id
  Future<Map<String, dynamic>> getFlight(String flightId) async {
    final response = await http.get(Uri.parse('$baseUrl/flights/search_flight/?flight_id=$flightId'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Flight not found');
    } else {
      throw Exception('Failed to load flight');
    }
  }

  // Method to add a flight
  Future<void> addFlight(Map<String, dynamic> flightData) async {
    final response = await http.post(
      Uri.parse('$baseUrl/flights/add_flight/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(flightData),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to add flight');
    }
  }

  // Method to add a user
  Future<void> addUser(Map<String, dynamic> userData) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register/'), 
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(userData),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to add user');
    }
  }
}
