import 'package:connections/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class JoinRoomScreen extends StatefulWidget {
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roomController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 700
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Join a room'),
              const SizedBox(height: 25,),
              CustomTextField(
                controller: _nameController, 
                hint: 'Enter your name'
                ),
              const SizedBox(height: 30,),
              CustomTextField(
                controller: _roomController, 
                hint: 'Enter room id here'
                )  
            ],
          ),
        ),
      ),
    );
  }
}