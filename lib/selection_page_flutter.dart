
import 'package:flutter/material.dart';


class SelectionPageFlutter extends StatefulWidget {
  const SelectionPageFlutter({Key? key}) : super(key: key);

  @override
  State<SelectionPageFlutter> createState() => _SelectionPageFlutterState();
}

class _SelectionPageFlutterState extends State<SelectionPageFlutter> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4283F1),
        leading: BackButton(
          onPressed: () => Navigator.pushReplacementNamed(context, "/selectionPageModel")
        ),
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(" Flutter Testleri ",
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
                                      "Modül1 : Flutter Kurulumu ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(context, "/selectionPageModel");
                                    },
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),


                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 2: Dart Dili ve IDE Tanıma",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(context, "/selectionLeardBoard");
                                    },
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 3: Dart Dilini Derinlemesine Tanıma",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 4: Dart ile Nesne Tabanlı Programlama",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 5: Collection'lar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 6: Flutter'a Giriş",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 7: StatefulWidget ve StatelessWidget",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 8: Widget Ağacı",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 9: Layout",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 10: Navigation",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 11: Asenkron Programlama",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100) // put the width and height you want
                                    ),
                                  ),
                                ),
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
    } else if (index == 2) {
      // Leaderboard Page
      Navigator.pushReplacementNamed(context, "/selectionProfil");
    }
    setState(() {
      _currentIndex = index;
    });
  }


}