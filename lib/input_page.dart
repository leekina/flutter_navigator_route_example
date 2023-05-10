// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            onChanged: (value) {
              setState(() {
                inputText = value;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "전달할 값을 입력하세요",
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('pass the value'),
            onPressed: () {
              Navigator.pushNamed(context, '/result',
                  arguments: PassData(data: inputText));
            },
          ),
        ],
      ),
    );
  }
}

class PassData {
  String data;
  PassData({
    required this.data,
  });
}
