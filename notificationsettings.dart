import 'package:flutter/material.dart';

class notificationSettings extends StatefulWidget {
  const notificationSettings({super.key});

  @override
  State<notificationSettings> createState() => _notificationSettingsState();
}

class _notificationSettingsState extends State<notificationSettings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification")),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "Conversation tone",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Play sound for incoming and outgoing messages.',
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
                'Message',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            ListTile(
              title: Text(
                "Notification tone",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Defoult (whater_drop)',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Vibration",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Defoult',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Popup Notification",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Not Available',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Light",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'White',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "High prority notifications",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Show priviews of notification on top of screen.',
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
                "Reaction notification",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Show notification for reactions to your messages',
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
                'Groups',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            ListTile(
              title: Text(
                "Notification tone",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Defoult (whater_drop)',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Vibration",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Defoult',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                "Light",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'White',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
