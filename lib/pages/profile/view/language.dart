import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(),
      ),
    );
  }

  Widget toggleButton(String? title) {
    return ListTile(
      title: Text(
        title!,
      ),
    );
  }
}
