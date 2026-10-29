import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  const Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SoundBox'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Qual é o som de hoje?',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Suas músicas e artistas favoritos em um só lugar.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade50,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.deepPurple.shade200),
                  ),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.headphones,
                            size: 30, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sua trilha sonora',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            Text('Uma playlist para cada momento do seu dia.'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text('Minhas playlists',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFEDE7F6),
                          child: Icon(Icons.favorite, color: Colors.deepPurple),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('No repeat',
                                  style: TextStyle(fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 6),
                              Text('Aquelas que nunca enjoam.'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFE3F2FD),
                          child: Icon(Icons.menu_book, color: Colors.blue),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Foco nos estudos',
                                  style: TextStyle(fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 6),
                              Text('Uma companhia para se concentrar.'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFFFF3E0),
                          child: Icon(Icons.wb_sunny, color: Colors.orange),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Fim de tarde',
                                  style: TextStyle(fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 6),
                              Text('Para relaxar depois de um dia cheio.'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text('Artistas favoritos',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    Chip(avatar: Icon(Icons.person, size: 18),
                        label: Text('The Weeknd')),
                    Chip(avatar: Icon(Icons.person, size: 18),
                        label: Text('Matuê')),
                    Chip(avatar: Icon(Icons.person, size: 18),
                        label: Text('Fairuz')),
                  ],
                ),
                const SizedBox(height: 24),
                const Text('Ouvidas recentemente',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.deepPurple.shade100),
                  ),
                  child: const Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.music_note, color: Colors.deepPurple),
                        title: Text('Blinding Lights'),
                        subtitle: Text('The Weeknd'),
                      ),
                      Divider(height: 1, indent: 16, endIndent: 16),
                      ListTile(
                        leading: Icon(Icons.music_note, color: Colors.deepPurple),
                        title: Text('Anos Luz'),
                        subtitle: Text('Matuê'),
                      ),
                      Divider(height: 1, indent: 16, endIndent: 16),
                      ListTile(
                        leading: Icon(Icons.music_note, color: Colors.deepPurple),
                        title: Text('Nassam Alayna El Hawa'),
                        subtitle: Text('Fairuz'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Center(
                  child: Text('Dê o play no seu dia.',
                      style: TextStyle(color: Colors.black54)),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
