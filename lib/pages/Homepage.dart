import 'package:app_movie/widgets/DrawerWidget.dart';
import 'package:app_movie/widgets/ItemWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
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
            // Bagian Baris Baru
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.teal,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "BANJARMASIN",
                        style: GoogleFonts.roboto(
                          color: Colors.orange,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.teal,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mail_outline,
                        color: Colors.teal,
                        size: 20,
                      ),
                      SizedBox(width: 2),
                      Text(
                        "Inbox",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.teal,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(width: 25),
                      Image.asset(
                        "assets/discount.png",
                        color: Colors.teal,
                        width: 24, // Sesuaikan lebar ikon sesuai kebutuhan
                        height: 22,
                        // Sesuaikan tinggi ikon sesuai kebutuhan
                      ),
                      SizedBox(width: 2),
                      Text(
                        "E-Voucher",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.teal,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 200,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/Promo1.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/Promo2.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/Promo3.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            ItemsWidget(),
          ],
        ),
      ),
    );
  }
}
