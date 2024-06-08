import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isExpanded = false; // Corrected variable name

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionTile Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ExpansionTile Example'),
        ),
        body: Column(
          children: <Widget>[
            ExpansionTile(
              title: const Text("Expand"),
              trailing: Icon(

                _isExpanded ? Icons.arrow_drop_down : Icons.arrow_drop_up, // Corrected trailing icon based on expansion state
              ),
              children: const <Widget>[
                ListTile(

                  title: Text("Sadik Saroar"),
                ),
              ],
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isExpanded = expanded; // Update expansion state
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
