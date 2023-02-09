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
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              splashRadius: 20,
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 20,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          body: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //***************TabBar***********
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[200]!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: TabBar(
                      padding: EdgeInsets.all(4),
                      labelColor: Colors.white,
                      labelStyle: TextStyle(fontSize: 18),
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      indicatorColor: Colors.purple,
                      tabs: [Tab(text: "Your info"), Tab(text: "Settings")],
                    ),
                  ),
                ),
                //*********First container*********
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/pic.jpg"),
                        radius: 50,
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jack Wee",
                            style: GoogleFonts.roboto(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Egypt",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[350]),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Buttons(icon: Icons.edit, text: "Edit Profile"),
                              Buttons(icon: Icons.history, text: "History"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        //*********Second container*********
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Text("Verify your profile"),
                                    Spacer(),
                                    IconButton(
                                        splashRadius: 15,
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.arrow_forward_ios_outlined))
                                  ],
                                ),
                              ),
                              Buttons(
                                  icon: Icons.add_box_outlined,
                                  text: "Verify my ID"),
                              Buttons(
                                  icon: Icons.add_box_outlined,
                                  text: "Confirm E-mail"),
                              Buttons(
                                  icon: Icons.check_box,
                                  text: "Number verified")
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey[200]!, width: 3),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        //*********Third container*********
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Text("Cars"),
                                    Spacer(),
                                    IconButton(
                                        splashRadius: 15,
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.arrow_forward_ios_outlined))
                                  ],
                                ),
                              ),
                              Buttons(
                                  icon: Icons.add_box_outlined,
                                  text: "Add car"),
                              SizedBox(height: 15),
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey[200]!, width: 3),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        //*********Fourth container*********
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Text("About you"),
                                    Spacer(),
                                    IconButton(
                                        splashRadius: 15,
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.arrow_forward_ios_outlined))
                                  ],
                                ),
                              ),
                              Buttons(
                                  icon: Icons.add_box_outlined,
                                  text: "Add information"),
                              SizedBox(height: 15),
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey[200]!, width: 3),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            //************Stack Icon button************
            Positioned(
              child: Container(
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350]!,
                      blurRadius: 8,
                      spreadRadius: 1,
                    )
                  ],
                ),
              ),
              top: 150,
              left: 80,
            ),
            Positioned(
                child: IconButton(
                  splashRadius: 20,
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.purple,
                    size: 24,
                  ),
                  onPressed: () {},
                ),
                top: 144,
                left: 81),
          ]),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  var icon;
  var text;
  Buttons({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.purple,
          ),
          SizedBox(width: 3),
          Text(
            "$text",
            style: GoogleFonts.roboto(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
