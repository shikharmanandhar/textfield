import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFdlExample extends StatelessWidget {
  const TextFdlExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
            // maxLength: 4,
            // maxLines: 2,
            // obscureText: true,
            // obscuringCharacter: "#",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter you name",
                icon: Icon(Icons.people),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
      ),
    );
  }
}
