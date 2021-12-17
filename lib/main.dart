import 'package:flutter/material.dart';
import 'package:textfield/screen/mybtn.dart';
import 'package:textfield/screen/newState.dart';
import 'package:textfield/screen/retrive.dart';
import 'package:textfield/screen/textfd.dart';
import 'package:textfield/screen/tryall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Try(),
    );
  }
}