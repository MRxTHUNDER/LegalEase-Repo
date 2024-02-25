import 'package:flutter/material.dart';

void main() {
  runApp(DetailsView());
}

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LawyerDescriptionPage(),
    );
  }
}

class LawyerDescriptionPage extends StatelessWidget {
  // Lawyer information
  final String lawyerName = "John Doe";
  final String phone = "+1 (123) 456-7890";
  final String address = "123 Main Street, Cityville";
  final double bookingCharges = 50.0; // Replace with actual charges

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lawyer Description'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lawyer: $lawyerName',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Phone: $phone'),
            Text('Address: $address'),
            SizedBox(height: 20),
            Text(
              'Booking Charges: \$${bookingCharges.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement booking functionality here
                // You can navigate to a new page for booking or show a modal, etc.
                // For simplicity, just print a message for now.
                print(
                    'Booking Now! Charges: \$${bookingCharges.toStringAsFixed(2)}');
              },
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
