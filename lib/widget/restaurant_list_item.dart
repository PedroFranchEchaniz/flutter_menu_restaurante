import 'package:flutter/material.dart';

class RestaurantList extends StatelessWidget {
  final String nombreRestaurante;
  final double precioMedio;
  final String direccion;
  final String url;

  const RestaurantList(
      {super.key,
      required this.nombreRestaurante,
      required this.precioMedio,
      required this.direccion,
      required this.url});

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
            Text(nombreRestaurante)
          ],
        ),
      ),
    );
  }
}
