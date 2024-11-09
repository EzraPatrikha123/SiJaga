import 'package:flutter/material.dart';
import 'package:sijaga/views/Chat.dart';
import 'package:sijaga/views/Data.dart';
import 'package:sijaga/views/Database.dart';
import 'package:sijaga/views/History.dart';
import 'package:sijaga/views/Replay.dart';
import 'package:sijaga/views/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home':(_)=>HomePage(),
      '/chat':(_)=>ChatPage(),
      '/data':(_)=>PersonListPage(),
      '/person':(_)=>ProfileScreen(),
      '/history':(_)=>History(),
      '/replay':(_)=>ProfilePage()
    },
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    );
  }
}