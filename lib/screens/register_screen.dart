import 'package:e_season/services/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_season/utils/validation_utils.dart';
import 'package:flutter/services.dart';
import 'package:e_season/screens/password_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _nicController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final FirebaseService _firebaseService = FirebaseService();

  @override
  void dispose() {
    _fullNameController.dispose();
    _addressController.dispose();
    _nicController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _register() async {
    if (_formKey.currentState!.validate()) {
      try {
        await _firebaseService.addPassenger(
          fullName: _fullNameController.text,
          address: _addressController.text,
          nic: _nicController.text,
          email: _emailController.text,
          phone: _phoneController.text,
        );
        _showSnackbar('Data sent to Firebase successfully');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PasswordScreen(),
          ),
        );
      } catch (e) {
        _showSnackbar('Error sending data to Firebase: $e');
      }
    }
  }

  void _showSnackbar(String message) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          Expanded(child: Text(message)),
          IconButton(
            icon: Icon(Icons.copy),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: message));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Copied to clipboard')),
              );
            },
          ),
        ],
      ),
      duration: Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/train_background_3.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 30),

              // Back arrow
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
              SizedBox(height: 60),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(35.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              // "GET STARTED" Text
                              Text(
                                'GET STARTED',
                                style: GoogleFonts.judson(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 9, 173, 97),
                                ),
                              ),
                              SizedBox(height: 20),

                              // Form
                              Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    // Full Name TextField
                                    Container(
                                      width: 300,
                                      height: 80,
                                      margin: EdgeInsets.symmetric(
                                        vertical: 8.0,
                                      ),
                                      child: TextFormField(
                                        controller: _fullNameController,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          labelText: 'Full Name',
                                          labelStyle: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          hintText: 'e.g. Kasun Perera',
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              30.0,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                        style: TextStyle(color: Colors.black),
                                        validator: ValidationUtils.validateName,
                                      ),
                                    ),

                                    // Address TextField
                                    Container(
                                      width: 300,
                                      height: 80,
                                      margin: EdgeInsets.symmetric(
                                        vertical: 8.0,
                                      ),
                                      child: TextFormField(
                                        controller: _addressController,
                                        keyboardType:
                                            TextInputType.streetAddress,
                                        decoration: InputDecoration(
                                          labelText: 'Address',
                                          labelStyle: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          hintText:
                                              'e.g. 25, Galle road, Mathara',
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.home,
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              30.0,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                        style: TextStyle(color: Colors.black),
                                        validator:
                                            ValidationUtils.validateAddress,
                                      ),
                                    ),

                                    // NIC no TextField
                                    Container(
                                      width: 300,
                                      height: 80,
                                      margin: EdgeInsets.symmetric(
                                        vertical: 8.0,
                                      ),
                                      child: TextFormField(
                                        controller: _nicController,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          labelText: 'NIC no',
                                          labelStyle: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          hintText: 'e.g. 97243039V',
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.credit_card,
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              30.0,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                        style: TextStyle(color: Colors.black),
                                        validator: ValidationUtils.validateNIC,
                                      ),
                                    ),

                                    // Email TextField
                                    Container(
                                      width: 300,
                                      height: 80,
                                      margin: EdgeInsets.symmetric(
                                        vertical: 8.0,
                                      ),
                                      child: TextFormField(
                                        controller: _emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          labelText: 'E mail address',
                                          labelStyle: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          hintText: 'e.g. kasun@gmail.com',
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              30.0,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                        style: TextStyle(color: Colors.black),
                                        validator:
                                            ValidationUtils.validateEmail,
                                      ),
                                    ),

                                    // Phone no TextField
                                    Container(
                                      width: 300,
                                      height: 80,
                                      margin: EdgeInsets.symmetric(
                                        vertical: 8.0,
                                      ),
                                      child: TextFormField(
                                        controller: _phoneController,
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          labelText: 'Phone no',
                                          labelStyle: TextStyle(
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          hintText: 'e.g. +94769087940',
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.phone,
                                            color: const Color.fromARGB(
                                              255,
                                              9,
                                              173,
                                              97,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                255,
                                                9,
                                                173,
                                                97,
                                              ),
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              30.0,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                        style: TextStyle(color: Colors.black),
                                        validator:
                                            ValidationUtils.validatePhone,
                                      ),
                                    ),

                                    // Next Button
                                    SizedBox(
                                      width: 300,
                                      height: 50,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFF65558F),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              25.0,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: 15.0,
                                          ),
                                          elevation: 5,
                                          shadowColor: Colors.black.withOpacity(
                                            0.5,
                                          ),
                                        ),
                                        onPressed: _register,
                                        child: Text(
                                          'Next',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                            ],
                          ),

                          // Sign in with text
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: const Color.fromARGB(
                                        255,
                                        9,
                                        173,
                                        97,
                                      ),
                                      thickness: 1.5,
                                      indent: 20,
                                      endIndent: 10,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      'Sign in With',
                                      style: GoogleFonts.alumniSansInlineOne(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                          255,
                                          153,
                                          141,
                                          141,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: const Color.fromARGB(
                                        255,
                                        9,
                                        173,
                                        97,
                                      ),
                                      thickness: 1.5,
                                      indent: 10,
                                      endIndent: 20,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),

                              // Google, Icloud, Facebook icons
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: IconButton(
                                        icon: Image.asset(
                                          'assets/images/google_logo.png',
                                          width: 30,
                                          height: 30,
                                        ),
                                        onPressed: () {
                                          // onPressed logic!
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: IconButton(
                                        icon: Image.asset(
                                          'assets/images/apple_logo.png',
                                          width: 30,
                                          height: 30,
                                        ),
                                        onPressed: () {
                                          // onPressed logic!
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: IconButton(
                                        icon: Image.asset(
                                          'assets/images/facebook_logo.png',
                                          width: 40,
                                          height: 40,
                                        ),
                                        onPressed: () {
                                          // onPressed logic!
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
