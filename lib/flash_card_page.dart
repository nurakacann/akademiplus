import 'package:akademiplus/ques_ans.dart';
import 'package:akademiplus/resuable_card.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';


class FlashCardPage extends StatefulWidget {
  const FlashCardPage({Key? key}) : super(key: key);

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  int _currentIndex = 0;

  @override
  final int _currentIndexNumber = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4283F1),
        leading: BackButton(
            onPressed: () => Navigator.pushReplacementNamed(context, "/selectionPage")
        ),

        elevation: 0,

      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(
                            child: Container(
                              height: 400,
                              child: FlipCard(
                                direction: FlipDirection.VERTICAL,
                                front: ReusableCard(
                                  text: quesAnsList[_currentIndexNumber].question,
                                ),
                                back: ReusableCard(
                                  text: quesAnsList[_currentIndexNumber].answer,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      //showPreviousCard();
                                      //updateToPrev();
                                    },
                                    icon: Icon(Icons.arrow_back, size: 30),
                                    label: Text(""),
                                    style: ElevatedButton.styleFrom(

                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)),
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        left: 25,
                                        top: 15,
                                        bottom: 15,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(context, "/selectionPageFlutter");
                                    },
                                    icon: Icon(Icons.arrow_forward, size: 30),
                                    label: Text(""),
                                    style: ElevatedButton.styleFrom(

                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.only(
                                          right: 20, left: 25, top: 15, bottom: 15),
                                    ),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.white.withOpacity(0.5),
        ),
        child: ClipRRect(

          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard),
                label: '',
              ),
            ],
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
          ),
        ),
      ),

    );
  }

  void onTabTapped(int index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, "/selectionProfil");
      // Profile Page
    } else if (index == 1) {
      // Home Page
      Navigator.pushReplacementNamed(context, "/selectionLeardBoard");
    }
    setState(() {
      _currentIndex = index;
    });
  }


}