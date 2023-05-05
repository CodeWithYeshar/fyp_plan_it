import 'package:flutter/material.dart';
import 'package:plan_it_2023/SignUpVendor.dart';
import 'constants.dart';

class LoginScreenVendor extends StatefulWidget {
  const LoginScreenVendor({Key? key}) : super(key: key);

  @override
  State<LoginScreenVendor> createState() => _LoginScreenVendorState();
}

class _LoginScreenVendorState extends State<LoginScreenVendor> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Stack(
        children: [
          Container(),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 100, 0, 0),
              child: Image.asset(
                'assets/images/Plan_it_signin.png',
                width: width,
                height: height * 0.2,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 35, right: 35),
                    child: Column(
                      children: [
                        TextField(
                          style: const TextStyle(color: primaryColor,decorationColor: primaryColor),
                          decoration: InputDecoration(
                              fillColor: secondaryColor,
                              filled: true,
                              hintText: "Email",
                              hintStyle: const TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold, color: Colors.black54),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: primaryColor),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          style: const TextStyle(color: primaryColor,decorationColor: primaryColor),
                          decoration: InputDecoration(
                              fillColor: secondaryColor,
                              filled: true,
                              hintText: "Password",
                              hintStyle: const TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold, color: Colors.black54),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 3, color: primaryColor),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Sign in',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w700, color: darkColor),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: darkColor,
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward,
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'register');
                              },
                              style: const ButtonStyle(),
                              child: const Text(
                                'Forgotten Password?',
                                style: TextStyle(
                                    color: darkColor,
                                    fontSize: 14),
                              ),
                            ),
                            TextButton(
                                onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => SignUpVendor())),
                                child: const Text(
                                  'Don\'t have an account? Sign Up',
                                  style: TextStyle(
                                    color: darkColor,
                                    fontSize: 14,
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
