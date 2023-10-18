import 'package:flutter/material.dart';

class privacySettings extends StatefulWidget {
  const privacySettings({super.key});

  @override
  State<privacySettings> createState() => _privacySettingsState();
}

class _privacySettingsState extends State<privacySettings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy")),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                'Who can see my personal info',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            ListTile(
              title: Text(
                "Last seen and online",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Everyone',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Profile photo",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Everyone',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "About",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Everyone',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Status",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Mycontact',
                style: TextStyle(fontSize: 15),
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
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Disappearing message',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Defalt message time",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Start new chat with disappearing messages set your time',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Groups",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Everyonet',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Live location",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'None',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Calls",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Scilence unknown callers',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Blocked contactes",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '2',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Fingerprint lock",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Disabled',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
