// ignore_for_file: sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';

import 'input_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PassData;
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Center(
        child: Text(
          '넘겨진 데이터는 ${args.data} 입니다',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
