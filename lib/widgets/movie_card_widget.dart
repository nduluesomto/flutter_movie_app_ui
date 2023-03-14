import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/controllers/app_controllers.dart';
import 'package:get/get.dart';

class MovieCard extends StatelessWidget {
  final int index;
  const MovieCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.find();
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: width,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 9.0,
                    spreadRadius: 0.1,
                    offset: const Offset(6, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                    image: AssetImage(controller.list[index].poster),
                    fit: BoxFit.cover)),
          ),
        ),
        const SizedBox(height: 15),
        Text(controller.list[index].title,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.yellow.shade800),
            const SizedBox(width: 8),
            Text(
              controller.list[index].rating.toString(),
            )
          ],
        )
      ],
    );
  }
}
