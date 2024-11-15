import 'package:e_season/screens/dashboard_screen.dart';
import 'package:e_season/screens/register_screen.dart';
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
  bool _isLogin = true; // current view is login or signup
  bool _isSignupOptions = false; //current view is signup

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
        child: Column(
          children: [
            SizedBox(height: 40),

            //back arrow
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(height: 100),

            // Title
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      _isLogin
                          ? 'Login'
                          : _isSignupOptions
                          ? 'Sign Up'
                          : 'Sign Up',
                      style: GoogleFonts.alumniSansInlineOne(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Title end
            SizedBox(height: 20),

            if (_isLogin) ...[
              // Email Field
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
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Password Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          width: 340,
                          child: TextField(
                            obscureText: !_isPasswordVisible,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.8),
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock, color: Colors.grey),
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
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Forgot Password (only for login)
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
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer:
                                    TapGestureRecognizer()
                                      ..onTap = () {
                                        // onPressed logic
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

              // Login Button
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 330, // Adjust the width of the button
                        height: 50, // Adjust the height of the button
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.cyan, // Set the background color
                            padding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 30.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DashboardScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 15,
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
              SizedBox(height: 20),

              // Login with Google Button (only for login)
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 330, // Adjust the width of the button
                        height: 50, // Adjust the height of the button
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.white, // Set the background color
                            padding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 30.0,
                            ), // Add padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                25.0,
                              ), // Set the border radius
                            ),
                          ),
                          onPressed: () {
                            // onPressed logic!
                          },
                          icon: Image.asset(
                            'assets/images/google_logo.png',
                            height: 24.0,
                          ),
                          label: Text(
                            'Login with Google',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],

            // Sign Up Options
            if (_isSignupOptions)
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Container(
                            width: 330,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.cyan, // background color
                                padding: EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 30.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => const RegisterScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign Up as General Passenger',
                                style: TextStyle(
                                  fontSize: 15,
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
                  SizedBox(
                    height: 20,
                  ), // Add space below the first signup option
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Container(
                            width: 330, // Adjust the width of the button
                            height: 50, // Adjust the height of the button
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.green, // Set the background color
                                padding: EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 30.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              onPressed: () {
                                // Add your onPressed code here for government passenger signup!
                              },
                              child: Text(
                                'Sign Up as Government Passenger',
                                style: TextStyle(
                                  fontSize: 15,
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
                ],
              ),
            SizedBox(height: 20),

            // Toggle Login/Sign Up Buttons
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      width: 330,
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor:
                                    _isLogin ? Colors.white : Colors.cyan,
                                backgroundColor:
                                    _isLogin ? Colors.cyan : Colors.transparent,
                                side: BorderSide(color: Colors.cyan),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isLogin = true;
                                  _isSignupOptions = false;
                                });
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: _isLogin ? Colors.white : Colors.cyan,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor:
                                    !_isLogin ? Colors.white : Colors.green,
                                backgroundColor:
                                    !_isLogin
                                        ? Colors.green
                                        : Colors.transparent,
                                side: BorderSide(color: Colors.green),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isLogin = false;
                                  _isSignupOptions = true;
                                });
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      !_isLogin ? Colors.white : Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ],
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
