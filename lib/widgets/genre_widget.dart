import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/controllers/app_controllers.dart';
import 'package:get/get.dart';

import '../models/category_model.dart';

class GenreList extends StatelessWidget {
  const GenreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.find();
    return SizedBox(
      height: 50,
      child: ListView.builder(
          itemCount: genres.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.changeGenreIndex(index);
              },
              child: Obx(
                () => Container(
                  margin: const EdgeInsets.only(right: 12, left: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: controller.selectedGenreIndex.value == index
                              ? Colors.black
                              : Colors.grey,
                          width: 1)),
                  child: Center(
                      child: Text(
                    genres[index],
                    style: TextStyle(
                        fontWeight: controller.selectedGenreIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal),
                  )),
                ),
              ),
            );
          }),
    );
  }
}
