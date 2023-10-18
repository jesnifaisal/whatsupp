import 'package:flutter/material.dart';

class chatSettings extends StatefulWidget {
  const chatSettings({super.key});

  @override
  State<chatSettings> createState() => _chatSettingsState();
}

class _chatSettingsState extends State<chatSettings> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.sunny),
              ),
              title: Text(
                "Theme",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text(
                'System default',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.image_sharp),
                ),
                title: Text(
                  "Wallpapper",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Disappearing message',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            ListTile(
              title: Text(
                "Read receipts",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'If you turned off,you wont send or recive Read receipts.',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Switch(
                  activeColor: Color.fromARGB(255, 9, 79, 11),
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
            ),
            ListTile(
              title: Text(
                "Media visibility",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Show newly download media in your gallery.',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Switch(
                  activeColor: Color.fromARGB(255, 9, 79, 11),
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
            ),
            ListTile(
              title: Text(
                "Font size",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Medium',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Archived chats',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            ListTile(
              title: Text(
                "Keep chat archived",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Archived chat will remain archived when you recived a new message.',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Switch(
                  activeColor: Color.fromARGB(255, 9, 79, 11),
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.backup),
              ),
              title: Text(
                "Chat backup",
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.login),
                ),
                title: Text(
                  "Transfer chats",
                  style: TextStyle(fontSize: 17),
                )),
            ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.history),
                ),
                title: Text(
                  "Chat history",
                  style: TextStyle(fontSize: 17),
                )),
          ],
        ),
      ),
    );
  }
}
