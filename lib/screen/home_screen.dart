import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/restaurant_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            RestaurantList(
                nombreRestaurante: 'Muralla China',
                precioMedio: 2.20,
                direccion: 'C/Falsa',
                url:
                    'https://images.ecestaticos.com/cQQaOdJ5IEC4SbwqHFamfhFiAh8=/3x166:2088x1264/557x418/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F0d6%2F8de%2F0e0%2F0d68de0e0f424d8279f61e9de356e8a1.jpg'),
            RestaurantList(
                nombreRestaurante: 'Muralla China',
                precioMedio: 2.20,
                direccion: 'C/Falsa',
                url:
                    'https://cdn2.cocinadelirante.com/1020x600/filters:format(webp):quality(75)/sites/default/files/images/2023/08/como-hacer-hamburguesa-de-atun.jpg')
          ],
        ),
      ),
    );
  }
}
