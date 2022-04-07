import 'package:flutter/material.dart';
// import 'dart:ui';

class MySignupPage extends StatefulWidget {
  const MySignupPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySignupPage> createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(bottom: 200),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/IMG_8328.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
              // child: Text(
              //   "Register",
              //   style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              //   textAlign: TextAlign.center,
              // ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(24),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.0),
                  )),
              child: Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
                      child: Text(
                        "Login to your account",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email/Username:',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          fillColor: Colors.amberAccent[600],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password:',
                        // icon: const Icon("assets/images/hidden.png"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        fillColor: Colors.amberAccent[600],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                    child: RichText(
                      // ignore: prefer_const_constructors
                      text: TextSpan(
                          text: "Don't have an account? ",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                          children: const <TextSpan>[
                            TextSpan(
                                text: "Log in",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.blue))
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
