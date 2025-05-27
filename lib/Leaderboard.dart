import 'package:flutter/material.dart';

class LeaderboardWidget extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboard = [
    {'name': 'Nadia', 'score': 1200},
    {'name': 'Ali', 'score': 1100},
    {'name': 'Aisha', 'score': 1000},
    {'name': 'Budi', 'score': 950},
    {'name': 'Siti', 'score': 900},
  ];

  LeaderboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
        backgroundColor: Color(0xFF037A16),
      ),
      body: ListView.builder(
        itemCount: leaderboard.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              leaderboard[index]['name'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Score: ${leaderboard[index]['score']}'),
            leading: Icon(Icons.star, color: Color(0xFF037A16)),
          );
        },
      ),
    );
  }
}
