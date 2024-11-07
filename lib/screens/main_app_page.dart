// lib/screens/main_app_page.dart

import 'package:flutter/material.dart';

class MainAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main App')),
      body: Center(child: Text('Welcome to the Main App!')),
    );
  }
}
