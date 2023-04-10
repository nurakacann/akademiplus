
import 'package:flutter/material.dart';


class SelectionPageModel extends StatefulWidget {
  const SelectionPageModel({Key? key}) : super(key: key);

  @override
  State<SelectionPageModel> createState() => _SelectionPageModelState();
}

class _SelectionPageModelState extends State<SelectionPageModel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4283F1),
        leading: BackButton(
          onPressed: () => Navigator.pushReplacementNamed(context, "/selectionPageFlutter")
        ),
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(" Flutter Kurulum",
                  style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 25)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),

                child: Form(
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 20.0, 20.0, 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                SizedBox(

                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Flashcard 1",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(context, "/selectionFlashCard");
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFF8B905),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),


                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Quiz 1",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF34A652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(

                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Flashcard 2",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFF8B905),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),


                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Quiz 2",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF34A652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(

                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Flashcard 3",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFF8B905),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),


                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Quiz 3",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF34A652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(

                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Flashcard 4",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFF8B905),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),


                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Quiz 4",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF34A652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(

                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Flashcard 5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFF8B905),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),


                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Quiz 5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF34A652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),



                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
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