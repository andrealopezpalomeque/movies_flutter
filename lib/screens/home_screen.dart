import 'package:flutter/material.dart';
import 'package:movies_flutter/providers/movies_provider.dart';
import 'package:movies_flutter/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              //TARJETAS PRINCIPALES ------------------------------------------------------------------------------------

              CardSwiper(
                movies: moviesProvider.onDisplayMovies,
              ),
              //SLIDER PELICULAS ------------------------------------------------------------------------------------
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Populares!', //opcional
              ),
            ],
          ),
        ));
  }
}
