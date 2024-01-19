import 'package:app_movie/booking_screen.dart';
import 'package:app_movie/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal.shade900,
        title: Image.asset(
          "assets/XXI.png",
          width: 75,
          height: 75,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      bottomNavigationBar: SizedBox(
        height: 140,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/IconDana.png",
                      height: 80,
                      width: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PaymentScreen()));
                        },
                        child: Row(
                          children: [
                            Text(
                              "Choose other payment",
                              style: GoogleFonts.roboto(
                                fontSize: 11,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              "assets/right_arrow.png",
                              color: Colors.black,
                              fit: BoxFit.cover,
                              width: 15,
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ConfirmPayment()));
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.teal.shade900,
                  ),
                  child: Center(
                    child: Text(
                      "Purchase",
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "images/1.jpg",
                            height: 150,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AQUAMAN AND THE LOST",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "KINGDOM",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 15,
                                  color: Color(0xFF004D40),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "STUDIO XXI BANJARMASIN",
                                  style: GoogleFonts.roboto(
                                      color: Color(0xFF004D40), fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 15,
                                  color: Colors.teal.shade900,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "09 Januari 2024",
                                  style: GoogleFonts.roboto(
                                      color: Color(0xFF004D40), fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/time.png",
                                  width: 15,
                                  height: 15,
                                  color: Colors.teal.shade900,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "09:40",
                                  style: GoogleFonts.roboto(
                                      color: Color(0xFF004D40), fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 15, right: 15, bottom: 0),
                    child: Divider(
                      height: 25,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red.shade200,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your order can only be heid in 8 minutes.",
                                style: GoogleFonts.ptSans(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "Be quick!",
                                style: GoogleFonts.ptSans(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            margin: EdgeInsetsDirectional.only(start: 10),
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(child: Text("06:20")),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.1),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset:
                              Offset(0, 2), // Offset from the top-left corner
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.5),
                          child: Text(
                            "Order Details",
                            style: GoogleFonts.ptSans(
                                fontSize: 14,
                                color: Colors.teal.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "AQUAMAN AND THE LOST KINGDOM",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.teal.shade900,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  "80.000",
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.teal.shade900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "2 Ticket",
                            style: GoogleFonts.ptSans(
                              fontSize: 12,
                              color: Colors.teal.shade900,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Admin Fee",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.teal.shade900,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  "10.000",
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.teal.shade900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              33,
                              (index) => Text(
                                    "_ ",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.teal.shade900,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  "IDR 90.000",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      color: Colors.teal.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ConfirmPayment extends StatelessWidget {
  const ConfirmPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "images/1.jpg",
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black
                  .withOpacity(0.5), // Warna hitam dengan opasitas 0.5
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 180),
                  Center(
                    child: Container(
                      height: 320,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.1)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset(
                            "assets/checklist.png",
                            height: 70,
                          ),
                          Text(
                            "Congratulations",
                            style: GoogleFonts.lexend(
                                fontSize: 24,
                                color: Colors.white.withOpacity(0.8)),
                          ),
                          Text(
                            "You booked the movie succesfull",
                            style: GoogleFonts.lexend(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.4)),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                16,
                                (index) => Text(
                                      "__ ",
                                      style: TextStyle(color: Colors.grey),
                                    )),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "THEATRE",
                                style: GoogleFonts.lexend(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.4)),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "SEAT",
                                style: GoogleFonts.lexend(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.4)),
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "AQUAMAN AND THE",
                                    style: GoogleFonts.lexend(
                                        fontSize: 12,
                                        color: Colors.white.withOpacity(0.8)),
                                  ),
                                  Text(
                                    "LOST KINGDOM",
                                    style: GoogleFonts.lexend(
                                        fontSize: 12,
                                        color: Colors.white.withOpacity(0.8)),
                                  ),
                                ],
                              ),
                              Text(
                                "B5, B6",
                                style: GoogleFonts.lexend(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.8)),
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "DATE",
                                style: GoogleFonts.lexend(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.4)),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "TIME",
                                style: GoogleFonts.lexend(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.4)),
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "  09 Jan, 2024",
                                style: GoogleFonts.lexend(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.8)),
                              ),
                              SizedBox(width: 1),
                              Text(
                                "09:40 AM",
                                style: GoogleFonts.lexend(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.8)),
                              ),
                              SizedBox(width: 15),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => BookingScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(27),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.1)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
