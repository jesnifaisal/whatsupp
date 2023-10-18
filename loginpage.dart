import 'package:flutter/material.dart';
import 'package:whatsupp/homepage.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String dropdawn = "+91";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 80),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xff075e55), width: 3))),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Verify your phone number',
                  style: TextStyle(
                      color: Color(0xff075e55),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 180, left: 135),
              child: SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff075e55), width: 3)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff075e55), width: 3))),
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                  ))),
          Padding(
            padding: const EdgeInsets.only(top: 189, left: 80),
            child: DropdownButton<String>(
              value: dropdawn,
              style: TextStyle(color: Colors.black),
              underline: Container(
                height: 3,
                color: Color(0xff075e55),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdawn = newValue!;
                });
              },
              items: [
                DropdownMenuItem(value: '+91', child: Text('+91')),
                DropdownMenuItem(value: '+92', child: Text('+92')),
                DropdownMenuItem(value: '+1', child: Text('+1')),
                DropdownMenuItem(value: '+62', child: Text('+62')),
                DropdownMenuItem(value: '+51', child: Text('+51'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260, left: 165),
            child: SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff075e55)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homepage(),
                        ));
                  },
                  child: Text('Next'),
                )),
          )
        ]),
      )),
    );
  }
}
