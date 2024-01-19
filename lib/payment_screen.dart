import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String payment = "Dana";
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
      body: ListView(
        padding: EdgeInsets.only(top: 30, right: 20, left: 20),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black.withOpacity(0.1)),
            ),
            child: Column(
              children: [
                RadioListTile(
                  value: "Dana",
                  groupValue: payment,
                  onChanged: (Value) {
                    setState(() {
                      payment = Value.toString();
                    });
                  },
                  activeColor: Colors.teal.shade900,
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/IconDana.png",
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                ),
                RadioListTile(
                  value: "Ovo",
                  groupValue: payment,
                  onChanged: (Value) {
                    setState(() {
                      payment = Value.toString();
                    });
                  },
                  activeColor: Colors.teal.shade900,
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/IconOvo.png",
                        height: 28,
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                ),
                RadioListTile(
                  value: "Gopay",
                  groupValue: payment,
                  onChanged: (Value) {
                    setState(() {
                      payment = Value.toString();
                    });
                  },
                  activeColor: Colors.teal.shade900,
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/IconGopay.png",
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/plus.png",
                fit: BoxFit.cover,
                height: 15,
                color: Colors.black.withOpacity(0.8),
              ),
              SizedBox(width: 5),
              Text(
                "Add new payment method",
                style: GoogleFonts.ptSans(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
