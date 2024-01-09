import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff21242C),
        body: SafeArea(
            child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    Container(
                      height: size.height * .45,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(15.0)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/1.jpg"))),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "DATE",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              Text(
                                "09",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "TICKETS",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "TIME",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              Text(
                                "09:30 AM",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "SEATS",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              Text(
                                "B5 B6",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          40,
                          (index) => Text(
                                "- ",
                                style: TextStyle(color: Colors.grey),
                              )),
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(image: AssetImage('assets/qr.png')),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: size.height * .695,
                left: 15,
                child: Icon(Icons.circle, color: Color(0xff21242C))),
            Positioned(
                top: size.height * .695,
                right: 15,
                child: Icon(Icons.circle, color: Color(0xff21242C))),
          ],
        )),
      ),
    );
  }
}
