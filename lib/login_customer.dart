import 'package:flutter/material.dart';
import 'package:fyp_plan_it/SignUpScreen2.dart';
import 'package:fyp_plan_it/mainhome.dart';
import 'package:google_fonts/google_fonts.dart';
import 'authenticate.dart';

class SignInTwo extends StatelessWidget {
  const SignInTwo({Key? key}) : super(key: key);
    

  @override
  Widget build(BuildContext context) {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(121, 131, 198, 1),
      body: SafeArea(
        child: Column(
          children: [
            //to give space from top
            const Expanded(
              flex: 1,
              child: Center(),
            ),

            //page content here
            Expanded(
              flex: 9,
              child: buildCard(size, context),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(Size size, BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        color: Color.fromRGBO(238, 240, 248, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.04,
            ),
            richText(),
            SizedBox(
              height: size.height * 0.02,
            ),
            //email & password section
            emailTextField(size),
            SizedBox(
              height: size.height * 0.02,
            ),
            passwordTextField(size),
            SizedBox(
              height: size.height * 0.03,
            ),

            //sign in button
            signInButton(size, context),
            SizedBox(
              height: size.height * 0.04,
            ),

            //footer section. sign up text here
            footerText(context),
          ],
        ),
      ),
    );
  }

  Widget richText() {
    return const Text.rich(
      TextSpan(
        text: 'WELCOME BACK!',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w800,
          color: Color.fromRGBO(121, 131, 198, 1),
        ),
      ),
    );
  }

  Widget emailTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF15224F),
        ),
        maxLines: 1,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Email/ Phone number',
            labelStyle: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget passwordTextField(Size size,) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF15224F),
        ),
        maxLines: 1,
        obscureText: true,
        controller: passwordController,
        keyboardType: TextInputType.visiblePassword,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget signInButton(Size size, BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: const Color.fromRGBO(121, 131, 198, 1),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4C2E84).withOpacity(0.2),
            offset: const Offset(0, 15.0),
            blurRadius: 60.0,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
        child: Text(
          'Sign in',
          style: GoogleFonts.inter(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget footerText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(TextSpan(
            style: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF3B4C68),
            ),
            children: [
              TextSpan(
                text: 'Don’t have an account ?',
              ),
              TextSpan(
                text: ' ',
              ),
            ])),
        GestureDetector(
          onTap: 
          Auth().signinWithEmailandPassword(password: passwor);
          () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => SignupScreen2()));
          },
          child: Text(
            'Sign up',
            style: TextStyle(
              fontSize: 12.0,
              color: const Color.fromRGBO(121, 131, 198, 1),
            ),
          ),
        )
      ],
    );
  }
}
