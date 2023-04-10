import 'package:akademiplus/profile_page.dart';
import 'package:akademiplus/quiz_page.dart';
import 'package:akademiplus/selection_page_unity.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:akademiplus/login_page.dart';
import 'package:akademiplus/selection_page.dart';
import 'package:akademiplus/selection_page_flutter.dart';
import 'package:akademiplus/selection_page_model.dart';
import 'package:akademiplus/flash_card_page.dart';
import 'package:akademiplus/entry_page.dart';
import 'package:akademiplus/leaderboard_page.dart';

import '../firebase_options.dart';
import 'leaderboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "/loginPage": (context) => LoginPage(),
        "/selectionPage": (context) => SelectionPage(),
        "/selectionPageFlutter": (context) => SelectionPageFlutter(),
        "/selectionPageUnity": (context) => SelectionPageUnity(),
        "/selectionPageModel": (context) => SelectionPageModel(),
        "/selectionFlashCard": (context) => FlashCardPage(),
        "/selectionLeardBoard": (context) => LeaderboardPage(),
        "/selectionProfil": (context) => ProfilePage(),



      },
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF4283F1),      ),
      home: Scaffold(
        body: EntryPage(),
      ),
    );
  }
}
