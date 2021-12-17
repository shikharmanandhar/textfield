import "package:flutter/material.dart";



class MyStateful extends StatefulWidget {
  const MyStateful({ Key? key }) : super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  String name='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
         children: [
         TextField(
           textCapitalization: TextCapitalization.words,
          onChanged:(String value){
            setState(() {
              name= value;
            });
          
          print('entered name is $name');
          },
          decoration: InputDecoration(
          labelText: "Name",
          hintText: "your best friend name",
          border: OutlineInputBorder(),
        ),),
        const SizedBox(
          height: 30,
        ),
         Text('Your best friend is $name'),

      ],),),
    );
  }
}