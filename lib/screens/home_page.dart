import 'package:flutter/material.dart';
import 'main_app_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A3A58),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Background image of the train
          ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
            child: Image.asset(
              'assets/train_background.jpeg',
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 30),
          // Title Text
          Text(
            'E - Season',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(height: 10),
          // Subtitle Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Ride Smarter, Book Faster – Your Season Ticket, Just a Click Away!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ),
          SizedBox(height: 30),
          // Train Icon as a Button
          GestureDetector(
            onTap: () {
              // Navigate to the main app page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainAppPage()),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.redAccent, width: 2),
              ),
              child: Image.asset(
                'assets/train_btn.png', // Make sure the filename matches
                height: 80,
                width: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
