import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profiles Found"),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // Display a preview image or video player
          Container(
            height: 200,
            color: Colors.grey,
            child: Center(child: Icon(Icons.play_circle_fill, size: 100, color: Colors.white)),
          ),
          SizedBox(height: 10),
          Text("Detected Profiles"),
          // Display individual profiles (this is sample data)
          Expanded(
            child: ListView(
              children: [
                ProfileCard(name: "Person 1", description: "Detected Face"),
                ProfileCard(name: "Person 2", description: "Detected Face"),
                ProfileCard(name: "Person 3", description: "Detected Face"),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play Video"),
        ],
        onTap: (index) {
          if (index == 1) {
            // Play the video or navigate to a video player
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VideoPlayerPage()),
            );
          }
        },
      ),
    );
  }
}

// ProfileCard widget for individual detected profiles
class ProfileCard extends StatelessWidget {
  final String name;
  final String description;

  const ProfileCard({required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        title: Text(name),
        subtitle: Text(description),
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
      ),
    );
  }
}

class VideoPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recorded Play")),
      body: Center(
        child: Icon(Icons.play_circle_fill, size: 100, color: Colors.blue),
      ),
    );
  }
}
