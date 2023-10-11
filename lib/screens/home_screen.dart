import 'package:flutter/material.dart';
import 'package:movies_flutter/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Peliculas en cines'),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
            )
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              //TARJETAS PRINCIPALES ------------------------------------------------------------------------------------
              CardSwiper(),
              //SLIDER PELICULAS ------------------------------------------------------------------------------------
              MovieSlider(),
            ],
          ),
        ));
  }
}
