import 'package:connections/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Create/Join a room to play!',
            style: TextStyle(
              fontSize: 24
            ) ,),
            SizedBox(height: size.height*0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 CustomButton(text: 'Create', isHome: true, 
                 onTap:()=> Navigator.pushNamed(context, '/create-room')),
        
                CustomButton(text: 'Join', isHome: true, 
                onTap:()=> Navigator.pushNamed(context, '/join-room'))
              ],
            )
          ], 
        ),
      ),
    );
  }
}


// Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateRoomScreen()))
// it has 2 disadvantage : lot of boilerplate code

// if we want https://google.com//create-room  like path to come it will not come if we use above method