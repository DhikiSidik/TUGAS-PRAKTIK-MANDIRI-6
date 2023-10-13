import 'package:flutter/material.dart';

void main() => runApp(MaterialAppExample());

class MaterialAppExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialApp", style: TextStyle(color: Colors.white)), // Mengatur warna teks AppBar
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white), // Mengatur warna ikon
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        backgroundColor: Color(0xFF303030), // Mengatur warna latar belakang AppBar
      ),
      body: Center(
        child: Text("This is MaterialApp", style: TextStyle(color: Colors.white)), // Mengatur warna teks Body
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white), // Mengatur warna ikon
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.white), // Mengatur warna ikon
            label: "Settings",
          ),
        ],
        backgroundColor: Color(0xFF303030), // Mengatur warna latar belakang BottomNavigationBar
      ),
      backgroundColor: Color(0xFF303030), // Mengatur warna latar belakang Scaffold
    );
  }
}
