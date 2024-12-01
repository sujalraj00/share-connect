import 'package:connections/screens/createroom_screen.dart';
import 'package:connections/screens/homepage.dart';
import 'package:connections/screens/join_roomscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connect',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
     
      routes: {
        // ignore: prefer_const_constructors
        '/' : (context) => HomeScreen(),
        '/create-room' :(context) =>const CreateRoomScreen(),
        '/join-room' :(context) =>const JoinRoomScreen(),
      }
    );
  }
}