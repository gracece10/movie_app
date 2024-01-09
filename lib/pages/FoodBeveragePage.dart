import 'package:app_movie/widgets/DrawerWidget.dart';
import 'package:flutter/material.dart';

class FBPage extends StatefulWidget {
  const FBPage({super.key});

  @override
  State<FBPage> createState() => _FBPageState();
}

class _FBPageState extends State<FBPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: DrawerWidget(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal.shade900,
          title: Image.asset(
            "assets/XXI.png",
            width: 75,
            height: 75,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
            ),
          ],
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: Text("Konten Halaman F&B"),
        ),
      ),
    );
  }
}
