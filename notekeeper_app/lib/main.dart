import 'package:flutter/material.dart';
import 'package:notekeeper_app/Screens/Note_detail.dart';
import 'package:notekeeper_app/Screens/Notelist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteKeeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const Notelist(),
    );
  }
}
