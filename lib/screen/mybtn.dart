import "package:flutter/material.dart";

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Button Example"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              TextButton(style: TextButton.styleFrom(
                textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                padding:EdgeInsets.all(20),
                backgroundColor: Colors.red,
                primary:Colors.white,
                elevation: 20,
                shadowColor: Colors.yellow,
                minimumSize: const Size(100, 50),
                side: BorderSide(color:Colors.green,width: 3),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))
              ),
              onPressed: (){}, child: Text('Text')),
              const SizedBox(height: 30),

              ElevatedButton(style: TextButton.styleFrom(
                textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                padding:EdgeInsets.all(20),
                backgroundColor: Colors.green,
                primary:Colors.white,
                elevation: 20,
                shadowColor: Colors.lightGreenAccent,
                minimumSize: const Size(200, 80),
                maximumSize: const Size(200, 80),
                side: BorderSide(color:Colors.white,width: 6),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(52))
              ),onPressed: () {}, child: const Text('Eleveted')),
              const SizedBox(height: 30),
              OutlinedButton(onPressed: () {}, child: const Text("Outlined"))
            ],
          ),
        ),
      ),
    );
  }
}
