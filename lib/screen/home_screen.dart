import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
      body: Center(
          child: TextButton(
        onPressed: () {},
        child: Text(
          "Cogartulation 🎉🎉",
          style: GoogleFonts.alice(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade700,
              fontSize: 30),
        ),
      )),
    ));
  }
}
