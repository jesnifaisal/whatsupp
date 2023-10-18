import 'package:flutter/material.dart';

class callWidget extends StatefulWidget {
  const callWidget({super.key});

  @override
  State<callWidget> createState() => _callWidgetState();
}

class _callWidgetState extends State<callWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i = 2; i < 3; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'images/ss.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anu',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.call_made,
                              size: 19,
                              color: Color(0xff075e55),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(12)  Today,10:18',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.call_sharp,
                    color: Color(0xff075e55),
                  )
                ]),
              )
          ],
        ),
      ),
    );
  }
}
