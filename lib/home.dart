// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fyp_plan_it/login_customer.dart';
import 'package:fyp_plan_it/vendor_login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 240, 248, 1),
        /* appBar: AppBar(
        title: Text(widget.title),
      ), */
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              const Text(
                'Plan-It',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Montserrat'),
              ),
              const Text('Everything Just One Click Away!',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Montserrat')),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                    width: 140,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const SignInOne())),
                      child: Text(
                        'Vendor',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                  SizedBox(
                    height: 80,
                    width: 140,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignInTwo())),
                      child: Text(
                        'Customer',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: 140,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Admin',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
