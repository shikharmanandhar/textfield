import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _firstController = TextEditingController();
  final _secondController = TextEditingController();
  final _thirdcontroller = TextEditingController();

  String result = '';

  String? myvalidation(value) {
    if (value == null || value.isEmpty) {
      return "Field is empty";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Form Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                const Text(
                  'Finding Simple Interest',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  validator: myvalidation,
                  controller: _firstController,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.green,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    labelText: 'Principal',
                    hintText: '0',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _firstController.clear();
                      },
                      icon: const Icon(Icons.clear),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: myvalidation,
                  controller: _secondController,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.green,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    labelText: 'Rate',
                    hintText: '0',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _secondController.clear();
                      },
                      icon: const Icon(Icons.clear),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field is empty";
                    }
                    return null;
                  },
                  controller: _thirdcontroller,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.red,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    labelText: 'Time',
                    hintText: '0',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _thirdcontroller.clear();
                      },
                      icon: const Icon(Icons.clear),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    //if (_formkey.currentState!.validate()) {
                      setState(() {
                        result = ((int.parse(_firstController.text) *
                                int.parse(_secondController.text) *
                                int.parse(_thirdcontroller.text) / 100)
                            .toString());
                      });
                    },
                  //},
                  child: const Text('Simple Interest'),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 80,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            'Simple Interest',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 80,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            result,
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}