import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: 310,
            height: 56,
            color: Colors.teal.shade900,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 13),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Welcome, [Guest]",
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.teal.shade900),
                    title: Text("Home"),
                    onTap: () {
                      // Tambahkan navigasi atau aksi yang diinginkan
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite, color: Colors.teal.shade900),
                    title: Text("Favorite Theater"),
                    onTap: () {
                      // Tambahkan navigasi atau aksi yang diinginkan
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.check_box, color: Colors.teal.shade900),
                    title: Text("Term of Services/Disclaimer"),
                    onTap: () {
                      // Tambahkan navigasi atau aksi yang diinginkan
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.help, color: Colors.teal.shade900),
                    title: Text("FAQ"),
                    onTap: () {
                      // Tambahkan navigasi atau aksi yang diinginkan
                    },
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.privacy_tip, color: Colors.teal.shade900),
                    title: Text("Privacy Policy"),
                    onTap: () {
                      // Tambahkan navigasi atau aksi yang diinginkan
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.call, color: Colors.teal.shade900),
                    title: Text("Contact Us"),
                    onTap: () {
                      // Tambahkan navigasi atau aksi yang diinginkan
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
