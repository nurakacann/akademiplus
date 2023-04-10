import 'package:akademiplus/leaderboard_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Container(
      padding: EdgeInsets.symmetric(horizontal: 66, vertical: 70),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Color(0xFF4283F1),
        ),
        SizedBox(
          child: Text(
            "Mehmet Yılmaz",
            style: TextStyle(fontSize: 24),
          ),
          height: 30,
        ),
        SizedBox(
          child: Text(
            "Bursiyer",
            style: TextStyle(fontSize: 20),
          ),
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  child: Text(
                    "Flutter      %90",
                    style: TextStyle(fontSize: 22),
                  ),
                  height: 40,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 15,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: 58,
                ),
                SizedBox(
                  child: Text(
                    "Unity      %75",
                    style: TextStyle(fontSize: 22),
                  ),
                  height: 40,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                  height: 15,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,

                                      )))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: 58,
                ),
                SizedBox(
                  child: Text(
                    "İngilizce      %65",
                    style: TextStyle(fontSize: 22),
                  ),
                  height: 40,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 1.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 15,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                width: 2,
                                color: Colors.black,
                              )))
                    ],
                  ),
                ),
              ),
            ],
          ),
          height: 58,
        ),
        Container(
          height: 3,
          width: 75,
          margin: EdgeInsets.symmetric(vertical: 8),
          color: Colors.white,
        ),
        Container(
          height: 3,
          width: 50,
          color: Colors.white,
        ),
      ]),
    ),
    Center(
      child: Text(
        'Burada ana sayfa içeriği yer alacak.',
        style: TextStyle(fontSize: 24),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/selectionPage");
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LeaderboardPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF4283F1),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 95),
            child: Container(
              width: double.infinity,
              height: 670,
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: _children[_currentIndex],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(

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
