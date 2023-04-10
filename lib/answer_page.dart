
import 'package:flutter/material.dart';


class AnswerPage extends StatefulWidget {
  const AnswerPage({Key? key}) : super(key: key);

  @override
  State<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "ENTRY PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ),

    );
  }


}
