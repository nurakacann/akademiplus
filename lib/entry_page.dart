import 'package:akademiplus/login_page.dart';
import 'package:flutter/material.dart';


class EntryPage extends StatefulWidget {
  @override
  _EntryPageState createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> opacity;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    opacity = Tween<double>(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward().then((_) {
      navigationPage();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void navigationPage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/logo.png'), fit: BoxFit.cover)),
      child: Container(
        child: SafeArea(
          child: new Scaffold(
            body: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 250)),
                Center(
                  child:Container(
                      width: 130,
                      height: 130,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadiusDirectional.circular(20.0),
                        color: Colors.white,
                      ),
                      child:new Image.asset('assets/logo.png')) ,
                ),
                Center(
                  child: Text("Akademi+", textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 55,
                      fontFamily: 'Nunito',
                      color: Colors.white,
                    ),

                  ),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}

