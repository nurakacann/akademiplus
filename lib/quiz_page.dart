
import 'package:akademiplus/profile_page.dart';
import 'package:flutter/material.dart';


class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);


  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<Widget> screnn = [
    ProfilePage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ProfilePage();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      // PageStorage
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {}
      ),
      // FloatingActionButton
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
