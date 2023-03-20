import 'package:flutter/material.dart';
import 'package:fyp_plan_it/AppTextField.dart';
import 'package:fyp_plan_it/login_customer.dart';

class SignupScreen2 extends StatefulWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phnoController = TextEditingController();
  SignupScreen2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignupScreen2State();
  }
}

class _SignupScreen2State extends State<SignupScreen2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 240, 248, 1),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              const Text('Sign Up',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(121, 131, 198, 1))),
              SizedBox(height: 60),
              CustomTextField(
                  hint: 'First Name', controller: widget.firstnameController),
              SizedBox(height: 30),
              CustomTextField(
                  hint: 'Last Name', controller: widget.lastnameController),
              SizedBox(height: 30),
              CustomTextField(
                  hint: 'Email', controller: widget.emailController),
              SizedBox(height: 30),
              CustomTextField(
                  hint: 'Password', controller: widget.passwordController),
              SizedBox(height: 30),
              CustomTextField(
                  hint: 'Phone no', controller: widget.phnoController),
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //DatabaseReference userReg = FirebaseDatabase.instance

                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
