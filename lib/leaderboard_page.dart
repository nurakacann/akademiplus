import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboardData = [
    {
      'rank': 1,
      'name': 'Mehmet Yılmaz',
      'score': 1200,
    },
    {
      'rank': 2,
      'name': 'Zeliha Kızılkaya',
      'score': 1100,
    },
    {
      'rank': 3,
      'name': 'Buse Görçüm',
      'score': 1000,
    },
    {
      'rank': 4,
      'name': 'Nura Kaçan',
      'score': 900,
    },
    {
      'rank': 5,
      'name': 'İhsan Berke Özşap',
      'score': 800,
    },
    {
      'rank': 6,
      'name': 'Ayşe Sena',
      'score': 700,
    },
    {
      'rank': 7,
      'name': 'Efe Polat',
      'score': 600,
    },
    {
      'rank': 8,
      'name': 'Beril Özşap',
      'score': 500,
    },
    {
      'rank': 9,
      'name': 'Ahmet Mehmet',
      'score': 400,
    },
    {
      'rank': 10,
      'name': 'David Lee',
      'score': 300,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4283F1),
        title: Text('Liderlik Sıralaması'),
        elevation: 0,
        leading: BackButton(
            onPressed: () => Navigator.pushReplacementNamed(context, "/selectionPage")
        ),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Top 10',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32.0),
            Expanded(
              child: Container(
                decoration: new BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                  itemCount: leaderboardData.length,
                  itemBuilder: (context, index) {
                    final playerData = leaderboardData[index];

                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(playerData['rank'].toString()),
                      ),
                      title: Text(playerData['name']),
                      subtitle: Text('Score: ${playerData['score']}'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
