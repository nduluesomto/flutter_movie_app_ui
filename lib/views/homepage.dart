import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/widgets/genre_widget.dart';

import '../widgets/category_widget.dart';
import '../widgets/slider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset('lib/assets/icons/menus.png'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset('lib/assets/icons/search.png',
                  width: 20, height: 25),
            )
          ]),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              CategoryWidget(),
              const SizedBox(height: 25),
              GenreList(),
              const SizedBox(height: 30),
              PageViewSlider(),
            ],
          )),
    );
  }
}
