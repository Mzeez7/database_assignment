// ignore_for_file: deprecated_member_use

import 'package:angela_yu_practice/db.dart';
import 'package:angela_yu_practice/db_operations.dart';
import 'package:angela_yu_practice/my_homepage.dart';
import 'package:angela_yu_practice/sign_up_screen.dart';
import 'package:angela_yu_practice/user.dart';
import 'package:flutter/material.dart';
import 'package:angela_yu_practice/my_signup_page.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key, required String title}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';

  String password = '';

  @override
  Widget build(BuildContext context) {
    const Color kPrimaryColor = Color(0xffeceff1);
    const Color kPrimaryLightColor = Color(0xff000000);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/zainabhome.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.3,

              child: Column(children: [
                SizedBox(
                  height: 50,
                ),
                Row(children: [
                  BackButton(
                    color: Colors.white,
                  )
                ]),
                SizedBox(
                  height: 40,
                ),
              ]),
              //color: Colors.white,
            ),
            Container(
              height: size.height * 0.7,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(200),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  const Text(
                    "Welcome Back",
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  const Text(
                    "Login to your account",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 200,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(211, 211, 211, 100),
                        borderRadius: BorderRadius.circular(29)),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      decoration: InputDecoration(
                        icon: Icon(Icons.person, color: kPrimaryLightColor),
                        hintText: "Email/Username",
                        hintStyle: TextStyle(
                            color: kPrimaryLightColor,
                            fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(211, 211, 211, 100),
                        borderRadius: BorderRadius.circular(29)),
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock, color: kPrimaryLightColor),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: kPrimaryLightColor,
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: kPrimaryLightColor,
                            fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Remember me"),
                    SizedBox(
                      width: 100,
                    ),
                    FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      color: kPrimaryColor,
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                  SizedBox(height: 20),
                  Container(
                      width: size.width * 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          color: kPrimaryLightColor,
                          onPressed: () async {
                            final db = await database().initDB();
                            var createdUser =
                                user(email: email, password: password);
                            await DBOperations(db).insertUser(createdUser);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Myhomepage(
                                    title: '',
                                  );
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      const SizedBox(
                        width: 2,
                      ),
                      //FlatButton("Sign up"),
                      FlatButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        color: kPrimaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignupScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
