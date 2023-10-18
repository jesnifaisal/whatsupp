import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsupp/callwidget.dart';
import 'package:whatsupp/chatwidget.dart';
import 'package:whatsupp/statuswidget.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: AppBar(
                elevation: 0.3,
                leading: Text(''),
                title: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'WhatsApp',
                    style: TextStyle(fontSize: 21),
                  ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(top: 12, right: 15),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            ImagePicker imagePicker = ImagePicker();
                            await imagePicker.pickImage(
                                source: ImageSource.camera);
                          },
                          child: Icon(
                            Icons.camera_alt,
                            size: 28,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.search,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                  PopupMenuButton(
                      onSelected: (selected) {
                        if (selected == 5) {
                          Navigator.pushNamed(context, "settingsPage");
                        }
                      },
                      elevation: 10,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      iconSize: 28,
                      itemBuilder: (context) => [
                            PopupMenuItem(
                                value: 1,
                                child: Text(
                                  'New Group',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )),
                            PopupMenuItem(
                                value: 2,
                                child: Text(
                                  'New broadcast',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )),
                            PopupMenuItem(
                                value: 3,
                                child: Text(
                                  'Linked divices',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )),
                            PopupMenuItem(
                                value: 4,
                                child: Text(
                                  'Stared messages',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )),
                            PopupMenuItem(
                                value: 5,
                                child: Text(
                                  'Settings',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ))
                          ])
                ],
              )),
          body: Column(
            children: [
              Container(
                color: Color(0xff075e55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 3,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    Container(
                      width: 100,
                      child: Tab(
                        child: Row(children: [
                          Text('CHATS'),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                '10',
                                style: TextStyle(color: Color(0xff075e55)),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      width: 110,
                      child: Tab(child: Text('STATUS')),
                    ),
                    Container(
                      width: 110,
                      child: Tab(child: Text('CALLS')),
                    )
                  ],
                ),
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(
                      children: [chatWidget(), statusWidget(), callWidget()]))
            ],
          ),
        ));
  }
}
