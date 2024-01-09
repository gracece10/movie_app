import 'dart:async';
import 'package:app_movie/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage("assets/splash.jpg"),
                fit: BoxFit.cover,
                opacity: 0.5)),
        child: Center(
            child: Text(
          "C-TIX",
          style: GoogleFonts.signika(
            color: Colors.white,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
