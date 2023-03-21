import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fyp_plan_it/SplashScreen.dart';
import 'package:fyp_plan_it/mainhome.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'homescreen': (context) => HomeScreen(),
      },
      title: 'Plan-It',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromRGBO(121, 131, 198, 1),
          secondary: Color.fromRGBO(238, 240, 248, 1),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
