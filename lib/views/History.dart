import 'package:flutter/material.dart';
import 'package:sijaga/widgets/menu_button.dart';
import 'package:sijaga/views/Replay.dart';

class History extends StatelessWidget {
    final List<Map<String,String>> historyData = [
       {
      "date": "10-05-2024",
      "place": "Ruang Tamu",
      "camera": "Camera 1",
      "recording": "Sound Recorded",
    },
    {
      "date": "11-05-2024",
      "place": "Ruang Tamu",
      "camera": "Camera 1",
      "recording": "Movement Recorded",
    },
    {
      "date": "12-05-2024",
      "place": "Ruang Tamu",
      "camera": "Camera 1",
      "recording": "Sound Recorded",
    },
    ];
  History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: Icon(Icons.shield, color: Colors.white),
        title: Text('SiJaga', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: historyData.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () {
              // Navigate to ProfilePage when the video thumbnail is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: HistoryCard(
              date: historyData[index]["date"]!,
              place: historyData[index]["place"]!,
              camera: historyData[index]["camera"]!,
              recording: historyData[index]["recording"]!,
            ),
          );
        },
      ),
      bottomNavigationBar: MenuButton(1),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String date;
  final String place;
  final String camera;
  final String recording;

  const HistoryCard({
    Key? key,
    required this.date,
    required this.place,
    required this.camera,
    required this.recording,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: Colors.blue.shade300,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.grey,
              child: Icon(Icons.image, size: 50, color: Colors.white),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Tempat: $place",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Kamera: $camera",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    recording,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: recording == "Sound Recorded" ? Colors.white : Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.star_border, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
