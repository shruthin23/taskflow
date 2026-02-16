import 'package:flutter/material.dart';
import 'screens/landing.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/dashboard.dart';
import 'screens/add_task.dart';
import 'screens/auto_rescue.dart';

void main() {
  runApp(const TaskFlowApp());
}

class TaskFlowApp extends StatelessWidget {
  const TaskFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaskFlow',
      themeMode: ThemeMode.light, // Force light mode
      /// 🌞 LIGHT THEME
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF7B3FE4),
          onPrimary: Colors.white,
          secondary: Color(0xFFD8B4FE),
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          background: Color(0xFFF6F2FB),
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F2FB),
      ),

      /// ROUTES
      initialRoute: LandingPage.route,
      routes: {
        LandingPage.route: (context) => const LandingPage(),
        LoginPage.route: (context) => const LoginPage(),
        SignUpPage.route: (context) => const SignUpPage(),
        DashboardPage.route: (context) => const DashboardPage(),
        AddTaskPage.route: (context) => const AddTaskPage(),
        AutoRescuePage.route: (context) => const AutoRescuePage(),
      },
    );
  }
}
