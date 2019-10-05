import 'package:flutter/material.dart';
import 'screens/note_list.dart';
import 'Note.dart';
import 'screens/note_details.dart';
import 'database_helper.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LCO ToDo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.deepPurple,
      ),
      home: NoteList(),
    );
  }
}
