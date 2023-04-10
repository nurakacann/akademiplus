import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25, left: 40, right: 40),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 15,
        shadowColor: Colors.green[500],
        color: Colors.green[500],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 23, fontFamily: 'Nunito', color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
      ),
    );
  }
}