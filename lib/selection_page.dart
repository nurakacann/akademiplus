
import 'package:flutter/material.dart';


class SelectionPage extends StatefulWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(padding: EdgeInsets.only(top: 65)),
              Text(" Merhaba ",
                  style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 25)
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text("  Mehmet YILMAZ",
                  style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 25)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 40),
                child: Form(
                   child: Card(
                     shape: RoundedRectangleBorder(
                       side: BorderSide(
                         color: Colors.white,
                       ),
                       borderRadius: BorderRadius.only(topLeft:Radius.circular(30), topRight: Radius.circular(30)),
                     ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 100.0, 20.0, 180.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "FLUTTER",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(context, "/selectionPageFlutter");
                                    },
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(75,100),
                                        primary: Color(0xff4283f1),


                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 30)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "UNITY",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(context, "/selectionPageUnity");
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),


                                ),
                                Padding(padding: EdgeInsets.only(top: 30)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "İNGİLİZCE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xffea4335),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),


                                )
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