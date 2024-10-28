import 'package:flutter/material.dart';
import 'package:responsi_1/akun.dart';
import 'package:responsi_1/home.dart';
import 'package:responsi_1/login.dart';
import 'package:responsi_1/password.dart';
import 'package:responsi_1/profile.dart';
import 'package:responsi_1/registration.dart';
import 'package:responsi_1/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Responsi',
      initialRoute: '/', 
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/register': (context) => const RegistrationPage(),
        '/forgot-password': (context) => const PasswordPage(),
        '/profile': (context) => const ProfilPage(),
        '/akun': (context) => const AkunPage()
      },
    );
  }
}

