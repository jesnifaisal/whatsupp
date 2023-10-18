import 'package:flutter/material.dart';

class storageSettings extends StatefulWidget {
  const storageSettings({super.key});

  @override
  State<storageSettings> createState() => _storageSettingsState();
}

class _storageSettingsState extends State<storageSettings> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Storage and data')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.folder),
                ),
                title: Text(
                  "Manage storage",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  '1.9GB',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.network_check),
                ),
                title: Text(
                  "Network usage",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  '16.6GB sent 55.6 recived',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  "Use less data for calls",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
                  "Proxy",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('off'),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Media auto dawnload',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Voice messages are always automaticaly dawnload',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 13),
                ),
              ),
              ListTile(
                title: Text(
                  "When using mobile data",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Photos'),
              ),
              ListTile(
                title: Text(
                  "When connected on wifi",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('All media'),
              ),
              ListTile(
                title: Text(
                  "When roming",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('No media'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
