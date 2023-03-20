import 'package:flutter/material.dart';
import 'package:fyp_plan_it/AppTextField.dart';
import 'package:fyp_plan_it/vendor_login.dart';

class SignupScreen1 extends StatefulWidget {
  TextEditingController companynameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cnicnoController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController companyPhnoController = TextEditingController();
  TextEditingController phnoController = TextEditingController();
  SignupScreen1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignupScreen1State();
  }
}

class _SignupScreen1State extends State<SignupScreen1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 240, 248, 1),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
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
                SizedBox(height: 30),
                CustomTextField(
                    hint: 'Company Name',
                    controller: widget.companynameController),
                SizedBox(height: 30),
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
                    hint: 'CNIC', controller: widget.phnoController),
                SizedBox(height: 30),
                CustomTextField(
                    hint: 'Category', controller: widget.phnoController),
                SizedBox(height: 30),
                CustomTextField(
                    hint: 'Address', controller: widget.phnoController),
                SizedBox(height: 30),
                CustomTextField(
                    hint: 'Company Phone no',
                    controller: widget.phnoController),
                SizedBox(height: 30),
                CustomTextField(
                    hint: 'Phone no', controller: widget.phnoController),
                SizedBox(height: 30),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //_firebaseAuth.createuser
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
      ),
    );
  }
}
