import 'package:e_season/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_season/screens/home_screen.dart';
import 'package:e_season/screens/register_screen.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (context) => const HomeScreen(),
    '/register': (context) => const RegisterScreen(),
    '/dashboard': (context) => const DashboardScreen(),
  };
}
