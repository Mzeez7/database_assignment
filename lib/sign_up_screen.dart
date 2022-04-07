import 'package:angela_yu_practice/my_homepage.dart';
import 'package:flutter/material.dart';
import 'package:angela_yu_practice/my_login_page.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color kPrimaryLightColor = Color(0xff000000);
    const Color kPrimaryColor = Color(0xfff1f8e9);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: const AssetImage("assets/images/IMG_7201.jpg"),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.2,

                    child: Column(children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(children: [
                        BackButton(
                          color: Colors.white,
                        )
                      ]),
                      const Text(
                        "Welcome Back",
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        "Login to your account",
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    //color: Colors.white,
                  ),
                  Container(
                    height: size.height * 0.8,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: "First Name",
                                hintStyle: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                hintStyle: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {},
                              decoration: InputDecoration(
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
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(211, 211, 211, 100),
                                borderRadius: BorderRadius.circular(29)),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: kPrimaryLightColor,
                                ),
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(
                                    color: kPrimaryLightColor,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Remember me"),
                              SizedBox(
                                width: 100,
                              ),
                              FlatButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 5),
                                color: kPrimaryColor,
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      color: Colors.green,
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
                                onPressed: () {
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
                                  "Sign Up",
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
                            Text("Already have an account?"),
                            SizedBox(
                              width: 2,
                            ),
                            //FlatButton("Sign up"),
                            FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              color: kPrimaryColor,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return LoginScreen(
                                        title: '',
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                    color: Colors.green,
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
          ],
        ),
      ),
    );
  }
}
