import 'package:app_movie/pages/AccountPage.dart';
import 'package:app_movie/pages/FoodBeveragePage.dart';
import 'package:app_movie/pages/Homepage.dart';
import 'package:app_movie/pages/TicketPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, dynamic>> bottomNavItems = [
    {"icon": "assets/home.png", "label": "Home"},
    {"icon": "assets/ticket.png", "label": "Tickets"},
    {"icon": "assets/cinema.png", "label": "F&B"},
    {"icon": "assets/person.png", "label": "Account"}
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentPage) {
        case 0:
          return const HomePage();
        case 1:
          return TicketsPage();
        case 2:
          return FBPage();
        case 3:
          return AccountPage();
        default:
          return Center(
            child: Text(
              'Something Wrong !!',
              style: GoogleFonts.roboto(fontSize: 32, color: Colors.white),
            ),
          );
      }
    }

    return Scaffold(
      body: body(),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal.shade900,
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              bottomNavItems.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentPage = index;
                  });

                  // Tambahkan aksi sesuai kebutuhan saat ikon diklik
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentPage == index
                            ? Colors.black.withOpacity(.1) // Warna saat aktif
                            : Colors.teal, // Warna saat tidak aktif
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(.1),
                            spreadRadius: currentPage == index ? 5 : 0,
                            blurRadius: currentPage == index ? 5 : 0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          bottomNavItems[index]["icon"],
                          color: Colors.white,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      bottomNavItems[index]["label"],
                      style: TextStyle(
                        color: currentPage == index
                            ? Colors.white
                                .withOpacity(.3) // Warna teks saat aktif
                            : Colors.white, // Warna teks saat tidak aktif
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
