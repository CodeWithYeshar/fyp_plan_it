import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:plan_it_2023/SplashScreen.dart';
import 'loginsignupCustomer.dart';
import 'constants.dart';

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
        'login': (context) => loginsignupCustomer(),
      },
      title: 'Plan-It',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: primaryColor,
          secondary: secondaryColor
        ),
      ),
      home: const SplashScreen(),
    );
  }
}