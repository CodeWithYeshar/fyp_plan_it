import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'LoginScreenCustomer.dart';
import 'constants.dart';
import 'AppTextField.dart';
import 'Firebase_Auth.dart';

class SignUpCustomer extends StatefulWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phnoController = TextEditingController();

  @override
  State<SignUpCustomer> createState() => _SignUpCustomerState();
}

class _SignUpCustomerState extends State<SignUpCustomer> {

  void signUpUser() async {
    FirebaseAuthMethods s = FirebaseAuthMethods(FirebaseAuth.instance);
    s.signUpWithEmail(
      email: widget.emailController.text,
      password: widget.passwordController.text,
      context: context,
    );
    print("Hi I am running");
    await FirebaseFirestore.instance.collection('Customers').add({
      "Email": widget.emailController,
      "First Name": widget.firstnameController,
      "Last Name": widget.lastnameController,
      "Ph No": widget.phnoController,});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                const Text('Sign Up',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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
                    onPressed: (){
                      signUpUser();
                      },
                      //DatabaseReference userReg = FirebaseDatabase.instance,
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
