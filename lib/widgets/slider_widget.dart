import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/controllers/app_controllers.dart';
import 'package:get/get.dart';

import '../views/movie_details.dart';
import 'movie_card_widget.dart';

class PageViewSlider extends StatelessWidget {
  const PageViewSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.find();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
            controller: controller.pageController(),
            itemCount: controller.list.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Get.to(() => MovieDetails(index: index));
                  },
                  child: MovieCard(index: index));
            }),
      ),
    );
  }
}
