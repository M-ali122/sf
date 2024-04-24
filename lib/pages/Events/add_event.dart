import 'package:flutter/material.dart';
import 'package:sf_app/pages/Events/dialogbox.dart';

class AddEventDialogue extends StatefulWidget {
  const AddEventDialogue({super.key});

  @override
  State<AddEventDialogue> createState() => _AddEventDialogueState();
}

class _AddEventDialogueState extends State<AddEventDialogue> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff09101D).withOpacity(.5),
        child: Positioned(
          bottom: 300,
          child: Image(
              height: 50, width: 200, image: AssetImage('assets/Union.png')),
        ));
  }
}
