import 'package:flutter/material.dart';
import 'package:whatsupp/loginpage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => loginPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff075e55),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 370, left: 100),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/whatsupp.png",
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Whatsapp',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
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
