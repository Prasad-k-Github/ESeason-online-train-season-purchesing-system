import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/train_background_2.jpeg'),
            fit: BoxFit.cover,
          ),
        ),

        //designs
        child: Column(
          children: [
            SizedBox(height: 200), // Add space above the first row
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Login',
                      style: GoogleFonts.alumniSansInlineOne(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add space below the first row

            //Email Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 340, // Adjust the width of the text field
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email, color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Add space below the second row

            //Password Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 340, // Adjust the width of the text field
                        child: TextField(
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock,
                                color: Colors.grey), // Add lock icon
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //forgot password
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Forget password? ',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                          children: [
                            TextSpan(
                              text: 'Click here',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 18, // Increase the font size
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Add your onPressed code here!
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), // Add space below the fourth row

            //Login Button
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      width: 340, // Adjust the width of the button
                      height: 55, // Adjust the height of the button
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.cyan, // Set the background color
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 31, 30, 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                // Add your widgets here for the sixth row
              ],
            ),

            Row(
              children: [
                // Add your widgets here for the seventh row
              ],
            ),
          ],
        ),
      ),
    );
  }
}
