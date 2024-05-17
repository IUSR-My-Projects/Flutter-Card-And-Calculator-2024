import 'package:flutter/material.dart';

class StackCardPage extends StatelessWidget {
  const StackCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 200,
              width: 350,
              margin: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'images/back.jpg',
                  fit: BoxFit.cover,
                ),
              )), // End Background image
          Container(
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 200,
            width: 350,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(16),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Laskar \n \t \t \t Benowo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'images/logo.png',
                      height: 30,
                    ),
                  ],
                ), // End title card and logo image
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/profile.jpeg'),
                  ),
                  title: Text(
                    'Riffat Iman Hirzi',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  subtitle: Text(
                    'xxxx-xxxx-xxxx-xxxx',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ), // End profile card

                const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Kartu Member',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ), // End bottom right text
              ],
            ),
          ), // End Card
        ],
      ),
    );
  }
}
