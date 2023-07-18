import 'package:cinemapedia/config/constants/environment.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Text(Environment.theMovieDbKey), //traemos la llave de la clase Environment q cree en config/constants
      ),
    );
  }
}