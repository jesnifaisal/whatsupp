import 'package:flutter/material.dart';
import 'package:whatsupp/homepage.dart';

class setStatus extends StatefulWidget {
  const setStatus({super.key});

  @override
  State<setStatus> createState() => _setStatusState();
}

class _setStatusState extends State<setStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homepage(),
                  ));
            },
            child: Icon(Icons.close)),
        actions: [
          InkWell(
            child: Icon(
              Icons.sentiment_dissatisfied,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.text_fields_sharp),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.theater_comedy),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      backgroundColor: Colors.amber[200],
      body: SingleChildScrollView(
          child: Stack(
        children: [
          SizedBox(
              height: 80,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(top: 450),
                child: TextField(
                  decoration: InputDecoration(disabledBorder: InputBorder.none),
                ),
              ))
        ],
      )),
    );
  }
}
