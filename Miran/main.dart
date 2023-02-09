import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2a3243),
        centerTitle: true,
        title: Text(
          "MIRAN",
          style: GoogleFonts.aboreto(fontSize: 30, color: Colors.yellow[200]),
        ),
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      drawer: Drawer(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ****************Drawer Header***********
            Container(
              alignment: Alignment.bottomCenter,
              height: 80,
              width: 400,
              color: Color(0xFF2a3243),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 100),
                  Text(
                    "MIRAN",
                    style: GoogleFonts.aboreto(
                      fontSize: 30,
                      color: Colors.yellow[200],
                    ),
                  ),
                ],
              ),
            ),

            //*************Drawer Options**********
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "ACCOUNT SETTINGS",
                style: GoogleFonts.abel(
                    fontSize: 22,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.start,
              ),
            ),

            Divider(thickness: 2),

            Items(icon: Icons.account_circle, text: "Profile"),

            Divider(thickness: 2, indent: 20, endIndent: 20),

            Items(icon: Icons.info, text: "About"),

            Divider(thickness: 2, indent: 20, endIndent: 20),

            Items(icon: Icons.phone, text: "Contact"),

            Divider(thickness: 2, indent: 20, endIndent: 20),

            Items(icon: Icons.lock, text: "Terms & Conditions"),

            Spacer(),
            Items(icon: Icons.logout, text: "Logout"),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  var icon;
  var text;
  Items({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ShaderMask(
        shaderCallback: (bounds) {
          return LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Color(0xFF2a3243)]).createShader(bounds);
        },
        child: Icon(
          icon,
          size: 40,
          color: Colors.blueGrey[500],
        ),
      ),
      title: Text(
        text,
        style: GoogleFonts.roboto(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}
