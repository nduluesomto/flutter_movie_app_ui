import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/widgets/rating_metascore_widget.dart';
import 'package:get/get.dart';

import '../controllers/app_controllers.dart';

class DetailsHeader extends StatelessWidget {
  int index;
  DetailsHeader({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.find();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.64,
      child: Stack(
        children: [
          Container(
              height: height * 0.64 - 75,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(60)),
                image: DecorationImage(
                    image: AssetImage(controller.list[index].poster),
                    fit: BoxFit.cover),
              )),
          Positioned(
              bottom: 35,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 10, left: 35, right: 15, bottom: 10),
                height: 90,
                width: width * 0.92,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 9.0,
                        spreadRadius: 0.1,
                        offset: const Offset(6, 5),
                      ),
                      // BoxShadow(color: Colors.pink, offset: Offset(6, 10))
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50))),
                child: RatingTab(
                  rating: controller.list[index].rating,
                  metaScore: controller.list[index].metaRating.toString(),
                  criticsReviews: controller.list[index].criticsReviews,
                ),
              ))
        ],
      ),
    );
  }
}
