import 'package:flutter/material.dart';


class Try extends StatefulWidget {
  const Try({ Key? key }) : super(key: key);

  @override
  _TryState createState() => _TryState();
}

class _TryState extends State<Try> {
  final mycontroller = TextEditingController();
  TextEditingController num1=new TextEditingController();
  TextEditingController num2= new TextEditingController();
  String sum = "";

  bool _validate = false;
  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();

  }
  @override


 Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:[TextField(
              
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              // maxLength: 4,
              // maxLines: 2,
              // obscureText: true,
              // obscuringCharacter: "#",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  labelText: "First number",
                  hintText: "Enter you First number",
                  
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            const SizedBox(height: 30),
            TextField(
              
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              // maxLength: 4,
              // maxLines: 2,
              // obscureText: true,
              // obscuringCharacter: "#",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  labelText: "second number",
                  hintText: "Enter you Second number",
                  
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            const SizedBox(height: 30),
             ElevatedButton(style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 25),
                padding:EdgeInsets.all(20),
                backgroundColor: Colors.green,
                primary:Colors.white,
                elevation: 20,
                shadowColor: Colors.lightGreenAccent,
                minimumSize: const Size(100, 50),
                maximumSize: const Size(200, 80),
                side: BorderSide(color:Colors.white,width: 3),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52))
              ),onPressed: () {


                
              }, child: const Text('add')),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text("Result"),
                  Text("${num}"),
                  
                ],
                

              )
              
            
            ] 
          ),
          
        ),
      ),
    );
  }
}