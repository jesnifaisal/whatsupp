import 'package:flutter/material.dart';
import 'package:whatsupp/accountsettings.dart';
import 'package:whatsupp/chatsettings.dart';
import 'package:whatsupp/helppage.dart';
import 'package:whatsupp/notificationsettings.dart';
import 'package:whatsupp/privacysettings.dart';
import 'package:whatsupp/storage.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

List<String> language = [
  'English',
  'Malayalam',
  'Hindi',
  'Kannada',
  'Tamil',
  'Telengu'
];

class _settingsPageState extends State<settingsPage> {
  String _currentLanguage = language[0];
  Future _displaaybpttomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        height: 300,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                RadioListTile(
                  title: Text('English'),
                  value: language[0],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Malayalam'),
                  value: language[1],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Hindi'),
                  value: language[2],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Kannada'),
                  value: language[3],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Tamil'),
                  value: language[4],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Thelungu'),
                  value: language[5],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/aa.png",
                        width: 65,
                        height: 65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sumitha",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Hey  there iam using whatsapp",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => accountSettings(),
                    ));
              },
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.key),
              ),
              title: Text(
                "Account",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text(
                'Security,notification,change number',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => privacySettings(),
                    ));
              },
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.lock),
              ),
              title: Text(
                "Privacy",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text(
                'Block contacts,disappearing messages',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => chatSettings(),
                    ));
              },
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.message),
              ),
              title: Text(
                "Chats",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text(
                'Theme,wallpaper,chat history',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => notificationSettings(),
                    ));
              },
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.notifications),
              ),
              title: Text(
                "Notifications",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text(
                'Message,Group & calla tones',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => storageSettings(),
                    ));
              },
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.storage),
              ),
              title: Text(
                "Storage and data",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text(
                'Network usage,auto dawnload',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {
                _displaaybpttomSheet(context);
              },
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.language),
              ),
              title: Text(
                "App language",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text(
                'English (device language)',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => helpPage(),
                    ));
              },
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.help),
              ),
              title: Text(
                "Help",
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text(
                'Help centre,contact us,privacy policy',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.person_2),
              ),
              title: Text(
                "Invite a friend",
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
