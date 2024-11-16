import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8EAEC),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/OTP_image.png',
                    height: 250,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Row 2 with label
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'OTP Verification',
                      style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3F484F),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Row 3
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enter the OTP sent to ',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Color(0xFF3F484F),
                    ),
                  ),
                  SizedBox(width: 1),
                  Text(
                    '+94769087940',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F484F),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Row 4
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(width: 10),
                Container(
                  width: 60,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(width: 10),
                Container(
                  width: 60,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(width: 10),
                Container(
                  width: 60,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Row 5
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't you receive the OTP? ",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Color(0xFF3F484F),
                  ),
                ),
                SizedBox(width: 1),
                TextButton(
                  onPressed: () {
                    // Add your resend OTP logic here
                  },
                  child: Text(
                    'Resend OTP',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF276B96),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 90),

            // Row 6
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF276B96), // Button color
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text(
                      'Verify',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
