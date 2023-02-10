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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            splashRadius: 15,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/pic.jpg"),
                radius: 70,
              ),
              SizedBox(height: 20),
              Text(
                "Make it professional",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              Text(
                "Make sure you are alone,Don't wear sunglasses,Look straight ahead,Be in a good light.",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 140),

              //**************First Button***************
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF9c49ed),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Take a picture",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),

              //**************second Button***************
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Color(0xFF9c49ed)),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Choose a picture",
                    style: TextStyle(
                      color: Color(0xFF9c49ed),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
