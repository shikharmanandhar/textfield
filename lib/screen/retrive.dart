import 'package:flutter/material.dart';

class RetrieveText extends StatefulWidget {
  const RetrieveText({Key? key}) : super(key: key);

  @override
  _RetrieveTextState createState() => _RetrieveTextState();
}

class _RetrieveTextState extends State<RetrieveText> {
  final mycontroller = TextEditingController();
  String name = "";
  bool _validate = false;
  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              TextField(
                controller: mycontroller,
                decoration: InputDecoration(
                  labelText: 'Insert Company Name',
                  hintText: "insert country name",
                  border: const OutlineInputBorder(),
                    
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    name = mycontroller.text;
                    name.isEmpty ? _validate = true : _validate = false;
                  });
                },
                child: Icon(Icons.arrow_right),
              ),
              SizedBox(
                height: 30,
              ),
              Text("${name}"),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState((){
      //       name=mycontroller.text;
      //       name.isEmpty?_validate=true :_validate=false;
      //     });
      //   },
      //   child: Icon(Icons.arrow_right),
      // ),
    );
  }
}
