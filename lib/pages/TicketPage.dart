import 'package:app_movie/transaksi_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  _TicketsPageState createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  double containerPosition = 0.0;
  bool showCafeTicketsContent = false;
  bool showTicketsContent = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: Drawer(),
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
        body: Container(
          color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
            child: Stack(
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 300),
                      top: 0,
                      left: containerPosition,
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: BoxDecoration(
                          color: Colors.teal.shade900,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 40,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            containerPosition = containerPosition == 0.0
                                ? MediaQuery.of(context).size.width / 2.1
                                : 0.0;
                            showCafeTicketsContent = false;
                            showTicketsContent =
                                true; // Reset state when switching tabs
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: containerPosition == 0.0
                                ? Colors.teal.shade900
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'XXI Tickets',
                            style: GoogleFonts.ptSans(
                              color: containerPosition == 0.0
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 20,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            containerPosition = containerPosition == 0.0
                                ? MediaQuery.of(context).size.width / 2.1
                                : 0.0;
                            showCafeTicketsContent = true;
                            showTicketsContent = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: containerPosition == 0.0
                                ? Colors.grey.shade300
                                : Colors.teal.shade900,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'XXI Cafe Tickets',
                            style: GoogleFonts.ptSans(
                              color: containerPosition == 0.0
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Conditional content for XXI Cafe Tickets
                if (showCafeTicketsContent)
                  Positioned(
                    top: 280, // Adjust the position as needed
                    left: 50,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'XXI Cafe Tickets Content',
                        style: GoogleFonts.ptSans(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                if (showTicketsContent)
                  Positioned(
                    top: 60,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TicketContainer(
                            imagePath: "images/1.jpg",
                            movieTitle: "AQUAMAN AND THE LOST KINGDOM",
                            cinemaLocation: "XXI CINEMA BANJARMASIN",
                            eventDate: "09 January 2024",
                            eventTime: "09:30",
                            ticketCode: "AS3H5RD",
                          ),
                          SizedBox(height: 16),
                          TicketContainer(
                            imagePath: "images/2.jpg",
                            movieTitle: "MARVELS AVENGERS INFINITY WAR",
                            cinemaLocation: "XXI CINEMA BANJARMASIN",
                            eventDate: "10 January 2024",
                            eventTime: "15:00",
                            ticketCode: "ZX8K2Y",
                          ),
                          // Add more TicketContainer widgets as needed
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TicketContainer extends StatelessWidget {
  final String imagePath;
  final String movieTitle;
  final String cinemaLocation;
  final String eventDate;
  final String eventTime;
  final String ticketCode;

  TicketContainer({
    required this.imagePath,
    required this.movieTitle,
    required this.cinemaLocation,
    required this.eventDate,
    required this.eventTime,
    required this.ticketCode,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: 320,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      imagePath,
                      width: 105,
                      height: 135,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Container(
                        width:
                            180, // Set the maximum width based on your design
                        child: Text(
                          movieTitle,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow
                              .ellipsis, // You can use ellipsis or fade
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Color(0xFF004D40),
                          ),
                          SizedBox(width: 5),
                          Text(
                            cinemaLocation,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 15,
                            color: Colors.teal.shade900,
                          ),
                          SizedBox(width: 5),
                          Text(
                            eventDate,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
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
                            eventTime,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset(
                            "assets/ticket.png",
                            width: 15,
                            height: 15,
                            color: Colors.teal.shade900,
                          ),
                          SizedBox(width: 5),
                          Text(
                            ticketCode,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: MediaQuery.of(context).size.height / 18,
              width: 320,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 223, 200, 134),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Barcode",
                      style: GoogleFonts.ptSans(
                        fontSize: 16,
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey.shade500, // Warna garis vertikal
                    thickness: 1.0, // Ketebalan garis vertikal
                    width: 20.0, // Lebar garis vertikal
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TransactionScreen(), // Ganti dengan halaman yang diinginkan
                        ),
                      );
                    },
                    child: Text(
                      "Details",
                      style: GoogleFonts.ptSans(
                        fontSize: 16,
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
