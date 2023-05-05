import 'package:flutter/material.dart';
import 'package:plan_it_2023/LoginScreenCustomer.dart';
import 'package:plan_it_2023/LoginScreenVendor.dart';
import 'package:plan_it_2023/SignUpCustomer.dart';
import 'package:plan_it_2023/SplashScreen.dart';
import 'constants.dart';

class loginsignupCustomer extends StatefulWidget {


  @override
  State<loginsignupCustomer> createState() => _loginsignupCustomerState();
}


class _loginsignupCustomerState extends State<loginsignupCustomer> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: secondaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  secondaryColor,
                  bgLinear,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Plan_it_signin.png',
                  width: width,
                  height: height * 0.2,
                ),
                const Text(
                  'Everything just one click away!',
                  style: TextStyle(
                    fontSize: 18,
                    color: darkColor,fontWeight: FontWeight.bold,fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(height: height * 0.02),

                SizedBox(height: height * 0.06),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: secondaryColor,
                    fixedSize: Size(width, height * 0.06),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.05),
                    ),
                  ),
                onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                builder: (context) => const LoginScreenCustomer()))
                  ,
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          textAlign :TextAlign.center,
                          'Sign in',
                          style: TextStyle(
                            fontSize: 14,
                            color: darkColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    fixedSize: Size(width, height * 0.065),
                    side: const BorderSide(
                      color: Colors.transparent,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.05),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignUpCustomer(),
                      ),
                    );
                  },
                  child: const Text(
                    'Create an account',
                    style: TextStyle(
                      fontSize: 14,
                      color: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Are you a Vendor? '),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreenVendor(),
                          ),
                        );
                      },
                      style: const ButtonStyle(),
                      child: const Text(
                        'Click Here',
                        style: TextStyle(
                            color: darkColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
