import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/images/zainabhome.jpg",
          ),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(
                    top: 450.0, bottom: 1.0, left: 40.0, right: 15.0),
                child: Text(
                  "Traditional African Spa",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 249, 247, 229),
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 161, 72),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                child: Text(
                  "Spa and Wellness",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),)
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 161, 72),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
               child: Center(
                child: Text(
                  "Salon",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  // textScaleFactor: 2.0,
                ),
               ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
