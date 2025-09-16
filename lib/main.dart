import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 300,
          child: ListView(
            children: [
              ProfileCard(
                name: 'Michael Golenia',
                description: 'A simple Programmer',
                imageUrl: 'assets/images/me.jpg',
              ),
              ProfileCard(
                name: 'Flutter',
                description: "I'm learning Flutter",
                imageUrl: 'assets/images/flutter.png',
              ),
              ProfileCard(
                name: 'Dart',
                description: 'I have an advanced Dart level',
                imageUrl: 'assets/images/dart.png',
              ),
              ProfileCard(
                name: 'See the repo in:',
                description:
                    'https://github.com/MichaelTwG?tab=repositories&q=dart&type=&language=&sort=',
                imageUrl: 'assets/images/dart.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.description,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 10.0,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
              radius: 50,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(226, 255, 255, 255),
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 255, 236, 158),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
