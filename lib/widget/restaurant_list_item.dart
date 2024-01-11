import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RestaurantList extends StatelessWidget {
  final String nombreRestaurante;
  final double precioMedio;
  final String direccion;
  final String url;
  final double rating;

  const RestaurantList(
      {super.key,
      required this.nombreRestaurante,
      required this.precioMedio,
      required this.direccion,
      required this.url,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        color: const Color.fromARGB(255, 184, 214, 230),
        child: Column(
          children: [
            Image.network(
              url,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Text(nombreRestaurante),
            RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            )
          ],
        ),
      ),
    );
  }
}
