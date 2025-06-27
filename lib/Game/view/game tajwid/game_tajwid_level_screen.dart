import 'package:flutter/material.dart';
import 'package:untitled/Game/view/game%20tajwid/game_tajwid.dart';
import 'package:untitled/Game/view/game%20tajwid/game_tajwid_2.dart';
import 'package:untitled/Game/widgets/level_card.dart';

class GameTajwidLevelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(170, 219, 233, 1),
      appBar: AppBar(
        title: Text('Mini Game'),
        backgroundColor: Color(0xFF037A16),
      ),
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Silahkan Pilih Level',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 24),

                LevelCard(
                  title: 'Level 1',
                  color: const Color.fromRGBO(165, 214, 167, 1),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameTajwid()),
                    );
                  },
                ),

                const SizedBox(height: 24),

                LevelCard(
                  title: 'Level 2',
                  color: const Color.fromRGBO(255, 179, 87, 1),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GameTajwid2()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}