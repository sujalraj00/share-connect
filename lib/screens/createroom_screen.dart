import 'package:connections/widgets/button.dart';
import 'package:connections/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
  
 
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
   final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.loose(Size(500, 500)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Create Room'),
              SizedBox(height: 20,),
              CustomTextField(controller: _nameController, hint: 'Enter name',),
              SizedBox(height: 30,),
              CustomButton(
                text: 'create', 
                onTap: (){})
            ],
          ),
        ),
      ),
    );
  }
}