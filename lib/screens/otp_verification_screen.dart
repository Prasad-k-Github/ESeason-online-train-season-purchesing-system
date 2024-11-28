import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8EAEC),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30), // Adjust the height as needed
              // Back arrow
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Color(0xFF3F484F)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),

              // OTP image
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

              // OTP Verification label
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'OTP Verification',
                        style: GoogleFonts.inter(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3F484F),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Phone number label sent OTP
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Enter the OTP sent to: ',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Color(0xFF3F484F),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 1),
                    Flexible(
                      child: Text(
                        '+94769087940',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3F484F),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // TextFields for entering OTP
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
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
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
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
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
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
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
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

              // Resend OTP
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't you receive the OTP?",
                    style: GoogleFonts.inter(
                      fontSize: 14,
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
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF276B96),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),

              // Verify button
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF276B96),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
