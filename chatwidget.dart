import 'package:flutter/material.dart';

class chatWidget extends StatefulWidget {
  const chatWidget({super.key});

  @override
  State<chatWidget> createState() => _chatWidgetState();
}

class _chatWidgetState extends State<chatWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(children: [
          for (int i = 1; i < 2; i++)
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "images/ss.png",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            'Anu',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Hallo... ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          '12:33',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff0fce5e),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Color(0xff0fce5e),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            '3',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
        ]),
      ),
    );
  }
}
