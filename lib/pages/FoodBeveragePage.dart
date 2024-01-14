import 'package:app_movie/pages/FoodBeverage2Page.dart';
import 'package:app_movie/widgets/DrawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body: ListView(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/Food2.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.center)),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Available at",
                  style: GoogleFonts.roboto(
                      fontSize: 16, color: Colors.teal.shade900),
                ),
                SizedBox(width: 5),
                Text(
                  "BANJARMASIN",
                  style: GoogleFonts.roboto(fontSize: 16, color: Colors.orange),
                ),
                SizedBox(width: 2),
                Icon(
                  Icons.expand_more,
                  size: 30,
                  color: Colors.teal.shade900,
                ),
                SizedBox(width: 45),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 20,
                      color: Colors.teal.shade900,
                    ),
                    Text(
                      "Near Me",
                      style: GoogleFonts.roboto(
                          fontSize: 13,
                          color: Colors.teal.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 25,
              thickness: 1,
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Type a theater to search",
                  style: GoogleFonts.roboto(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 5),
            Divider(
              height: 25,
              thickness: 1,
            ),
            SizedBox(height: 5),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FoodBeverage2()));
              },
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Icon(Icons.emoji_food_beverage_outlined),
                  SizedBox(width: 5),
                  Text(
                    "STUDIO XXI BANJARMASIN",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.black),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 90),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.teal.shade900,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Divider(
              height: 25,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
