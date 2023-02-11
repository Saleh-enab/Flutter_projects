import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  TextEditingController current = TextEditingController();
  TextEditingController newPass = TextEditingController();
  TextEditingController confirm = TextEditingController();

  @override
  void dispose() {
    current.dispose();
    newPass.dispose();
    confirm.dispose();
    super.dispose();
  }

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
              Icons.arrow_back_ios_new,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Change Password",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "It must be at least 8 characters,1 letter,1 number and 1 special character",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                AppTextField(
                    contoller: current,
                    hint: "Current password",
                    keyBoradType: TextInputType.text),
                SizedBox(height: 15),
                AppTextField(
                    contoller: newPass,
                    hint: "New password",
                    keyBoradType: TextInputType.text),
                SizedBox(height: 15),
                AppTextField(
                    contoller: confirm,
                    hint: "Confirm password",
                    keyBoradType: TextInputType.text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

bool valid = true;

class AppTextField extends StatefulWidget {
  var contoller;
  var hint;
  var keyBoradType;

  AppTextField(
      {required this.contoller,
      required this.hint,
      required this.keyBoradType});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyBoradType,
      controller: widget.contoller,
      obscureText: true,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
        filled: true,
        fillColor: Colors.grey[200],
        labelText: widget.hint,
        labelStyle: TextStyle(color: Colors.grey[600]),
        border: InputBorder.none,
        errorText: valid ? null : "Enter correct password",
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
      onSubmitted: (value) {
        if (value.trim().length < 8 ||
            !value.contains(RegExp(r'[A-Z]')) ||
            !value.contains(RegExp(r'[0-9]'))) {
          setState(
            () {
              valid = false;
            },
          );
        } else {
          setState(() {
            valid = true;
          });
        }
      },
    );
  }
}
