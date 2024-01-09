import 'package:app_movie/booking_screen.dart';
import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String imagePath;
  final String format;
  final String ageRating;

  Movie({
    required this.title,
    required this.imagePath,
    required this.format,
    required this.ageRating,
  });
}

class ItemsWidget extends StatelessWidget {
  ItemsWidget({Key? key}) : super(key: key);

  final List<Movie> movies = [
    Movie(
      title: "AQUAMAN AND THE LOST KINGDOM",
      imagePath: "images/1.jpg",
      format: "2D",
      ageRating: "R13+",
    ),
    Movie(
      title: "MARVELS AVENGERS INFINITY WAR",
      imagePath: "images/2.jpg",
      format: "2D",
      ageRating: "SU",
    ),
    Movie(
      title: "STAR WARS THE LAST JEDI",
      imagePath: "images/3.jpg",
      format: "IMAX 2D",
      ageRating: "R13+",
    ),
    Movie(
      title: "HARRY POTTER AND THE PRISONER OF AZKABAN",
      imagePath: "images/4.jpg",
      format: "2D",
      ageRating: "D17+",
    ),
    Movie(
      title: "HARRY POTTER AND THE HALF-BLOOD PRINCE",
      imagePath: "images/5.jpg",
      format: "2D",
      ageRating: "SU",
    ),
    Movie(
      title: "HARRY POTTER AND THE GOBLET OF FIRE",
      imagePath: "images/6.jpg",
      format: "IMAX 2D",
      ageRating: "R13+",
    ),
    Movie(
      title: "HARRY POTTER AND THE DEATHLY HALLOWS",
      imagePath: "images/7.jpg",
      format: "2D",
      ageRating: "SU",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.50,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(movies.length, (index) {
        Movie movie = movies[index];
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookingScreen()));
                },
                child: Container(
                  height: 240,
                  padding: EdgeInsets.only(top: 2, left: 2, right: 2),
                  child: Image.asset(
                    movie.imagePath,
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.symmetric(horizontal: 12.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          movie.format,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.teal.shade900,
                          ),
                        ),
                        Text(
                          movie.ageRating,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.teal.shade900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
