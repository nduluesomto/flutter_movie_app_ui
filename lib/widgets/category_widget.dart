import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/models/category_model.dart';
import 'package:get/get.dart';

import '../controllers/app_controllers.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    return SizedBox(
      height: 60,
      child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.selectedCategoryIndex(index);
              },
              child: Obx(
                () => Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(category[index],
                          style: TextStyle(
                              color: controller.selectedCategoryIndex == index
                                  ? Colors.black
                                  : Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 23)),
                      const SizedBox(height: 10),
                      Container(
                        width: 40,
                        height: 6,
                        decoration: BoxDecoration(
                            color: controller.selectedCategoryIndex == index
                                ? Colors.redAccent
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(5)),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
