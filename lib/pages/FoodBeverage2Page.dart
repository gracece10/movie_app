import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodBeverage2 extends StatefulWidget {
  const FoodBeverage2({Key? key}) : super(key: key);

  @override
  _FoodBeverage2State createState() => _FoodBeverage2State();
}

class _FoodBeverage2State extends State<FoodBeverage2> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.grey.shade200,
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
              child: GestureDetector(
                onTap: () {
                  // Handle refresh action
                },
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCategoryContainer("All"),
                    buildCategoryContainer("Combo"),
                    buildCategoryContainer("Promo Combo"),
                    buildCategoryContainer("Popcorn"),
                    buildCategoryContainer("Beverage"),
                    buildCategoryContainer("Food"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              if (selectedCategory == 'All')
                buildComboSection("COMBO", [
                  ComboItem(
                    title: "Combo Duo",
                    subtitle: "2 Beverages + 1 Popcorn",
                    price: "Rp90.000",
                    image: "assets/popcorn.jpg",
                  ),
                  ComboItem(
                    title: "Combo Puas",
                    subtitle: "1 Beverages + 1 Snack + 1 Popcorn",
                    price: "Rp102.000",
                    image: "assets/popcorn.jpg",
                  ),
                  ComboItem(
                    title: "Combo Solo",
                    subtitle: "1 Beverages + 1 Popcorn",
                    price: "Rp60.000",
                    image: "assets/popcorn.jpg",
                  ),
                  ComboItem(
                    title: "Combo Special",
                    subtitle: "",
                    price: "Rp100.000",
                    image: "assets/popcorn.jpg",
                  ),
                ]),
              buildComboSection("PROMO COMBO", [
                ComboItem(
                  title: "Combo Cola-borasi",
                  subtitle: "1 M. Popcorn + 1 M. Soft Drink",
                  price: "Rp56.000",
                  image: "assets/popcorn.jpg",
                ),
              ]),
              buildComboSection("POPCORN", [
                ComboItem(
                  title: "Large Mix Popcorn",
                  subtitle: "Mixed popcorn caramel & salty in Large size",
                  price: "Rp76.000",
                  image: "assets/popcorn.jpg",
                ),
                ComboItem(
                  title: "Large Caramel Popcorn",
                  subtitle: "Popcorn coated with caramel Large size",
                  price: "Rp76.000",
                  image: "assets/popcorn.jpg",
                ),
                ComboItem(
                  title: "Large Salty Popcorn",
                  subtitle: "Popcorn salty taste in Medium Size",
                  price: "Rp66.000",
                  image: "assets/popcorn.jpg",
                ),
              ]),
              buildComboSection("BEVERAGE", [
                ComboItem(
                  title: "Large Coca Cola",
                  subtitle: "32oz size Coca Cola",
                  price: "Rp33.000",
                  image: "assets/drink.jpg",
                ),
                ComboItem(
                  title: "Large Fanta",
                  subtitle: "32oz size Fanta",
                  price: "Rp33.000",
                  image: "assets/drink.jpg",
                ),
                ComboItem(
                  title: "Mizone",
                  subtitle: "Isotonic drink form Danone CON_MIZONE 500ML",
                  price: "Rp20.000",
                  image: "assets/drink.jpg",
                ),
              ]),
              buildComboSection("FOOD", [
                ComboItem(
                  title: "French Fries",
                  subtitle: "Fried straight cut potato",
                  price: "Rp47.000",
                  image: "assets/popcorn.jpg",
                ),
                ComboItem(
                  title: "Fried Fishball",
                  subtitle: "3 pcs stick fishball",
                  price: "Rp47.000",
                  image: "assets/popcorn.jpg",
                ),
                ComboItem(
                  title: "Hotdog Beef",
                  subtitle: "Beef sausage & hotdog bun",
                  price: "Rp50.000",
                  image: "assets/popcorn.jpg",
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryContainer(String category) {
    EdgeInsets margin = EdgeInsets.symmetric(horizontal: 5, vertical: 10);

    // Menambahkan margin kiri untuk kategori "All"
    if (category == "All") {
      margin = EdgeInsets.only(left: 20, right: 5);
    }

    // Menambahkan margin kanan untuk kategori "Food"
    if (category == "Food") {
      margin = EdgeInsets.only(left: 5, right: 25);
    }

    return Padding(
      padding: EdgeInsets.only(top: 70),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = category;
          });
        },
        child: IntrinsicWidth(
          child: Container(
            margin: margin,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: selectedCategory == category
                  ? Colors.teal.shade900
                  : Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.teal.shade900,
              ),
            ),
            child: Center(
              child: Text(
                category,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: selectedCategory == category
                      ? Colors.white
                      : Colors.teal.shade900,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildComboSection(String title, List<ComboItem> items) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ).paddingOnly(bottom: 5),
            SizedBox(height: 8),
            Column(
              children: items
                  .map((item) => buildComboContainer(
                        item.title,
                        item.subtitle,
                        item.price,
                        item.image,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildComboContainer(
      String title, String subtitle, String price, String image) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 5),
            Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10),
            Expanded(
              // Gunakan Expanded untuk membatasi lebar
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subtitle,
                    maxLines: 2, // Atur jumlah maksimum baris yang ditampilkan
                    overflow: TextOverflow
                        .ellipsis, // Tampilkan elipsis jika teks terpotong
                    style: GoogleFonts.roboto(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 80),
                      Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: Text(
                            "ADD",
                            style: TextStyle(color: Colors.teal.shade900),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          height: 25,
          thickness: 1,
        ),
      ],
    );
  }
}

class ComboItem {
  final String title;
  final String subtitle;
  final String price;
  final String image;

  ComboItem({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
  });
}
