import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            Text(
              "Chat",
              style: GoogleFonts.roboto(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 30),
            Text(
              "Your chat is empty !",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                """Please,book or offer a ride to contact 
                       with others.""",
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 3),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.grey[400],
          unselectedItemColor: Colors.grey[400],
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 35), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined, size: 35), label: "Publish"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history, size: 35), label: "Your rides"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat, size: 35), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, size: 35), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
