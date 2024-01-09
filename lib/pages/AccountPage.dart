import 'package:app_movie/widgets/DrawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        body: Container(
          child: ListView(
            children: [
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/user.png',
                      color: Colors.black,
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Anonymous",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "+12345678",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "anonymous@gmail.com",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 25,
                thickness: 1,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 235),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/billfold.png',
                      color: Colors.teal.shade900,
                      width: 23,
                      height: 23,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Info TopUp",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                color: Colors.grey.shade300,
                height: 40,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/profile.png',
                      color: Colors.grey.shade600,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Account",
                      style: TextStyle(color: Colors.grey.shade500),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/voucheruser.png',
                      color: Colors.teal.shade900,
                      width: 23,
                      height: 23,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Payment Method",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/voucheruser.png',
                      color: Colors.teal.shade900,
                      width: 23,
                      height: 23,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "e-Voucher",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Icon(Icons.card_travel, color: Colors.teal.shade900),
                    SizedBox(width: 5),
                    Text(
                      "Patner's Loyalty Redemption",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/profilekotak.png',
                      color: Colors.teal.shade900,
                      width: 23,
                      height: 23,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Update Profile",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/unlock.png',
                      color: Colors.teal.shade900,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Change PIN/Password",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/trash.png',
                      color: Colors.teal.shade900,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Delete Account",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              //Transaction History
              SizedBox(height: 15),
              Container(
                color: Colors.grey.shade300,
                height: 40,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/history.png',
                      color: Colors.grey.shade600,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Transaction History",
                      style: TextStyle(color: Colors.grey.shade500),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Icon(Icons.card_membership, color: Colors.teal.shade900),
                    SizedBox(width: 5),
                    Text(
                      "Purchase History",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Icon(Icons.balance, color: Colors.teal.shade900),
                    SizedBox(width: 5),
                    Text(
                      "Balance History",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Icon(Icons.history, color: Colors.teal.shade900),
                    SizedBox(width: 5),
                    Text(
                      "Top Up History",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              //Bawah Top Up History
              SizedBox(height: 15),
              Container(
                color: Colors.grey.shade300,
                height: 40,
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Icon(Icons.call, color: Colors.teal.shade900),
                    SizedBox(width: 5),
                    Text(
                      "Contact Us",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Icon(Icons.calendar_today, color: Colors.teal.shade900),
                    SizedBox(width: 5),
                    Text(
                      "Term of services/disclaimer",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.teal.shade900),
                    SizedBox(width: 5),
                    Text(
                      "Log out",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
