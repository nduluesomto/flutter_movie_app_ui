import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/app_controllers.dart';

class SectionTwo extends StatelessWidget {
  int index;
  // MovieModel movies;
  SectionTwo({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.find();

    var textList = controller.list[index].genra
        .map((e) => Container(
            padding: const EdgeInsets.all(6),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey, width: 1)),
            child: Text(e)))
        .toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(controller.list[index].title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.w500)),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      controller.list[index].year.toString(),
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    const SizedBox(width: 20),
                    Text('PG-${controller.list[index].ageRating.toString()}',
                        style: TextStyle(color: Colors.grey.shade500)),
                    const SizedBox(width: 20),
                    Text(controller.list[index].duration,
                        style: TextStyle(color: Colors.grey.shade500)),
                  ],
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.pinkAccent),
              child: const Icon(Icons.add, color: Colors.white),
            )
          ]),
        ),
        SizedBox(
          height: 30,
          child: Row(children: textList),
        ),
        const SizedBox(height: 30),
        const Text('Plot Summary',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
        const SizedBox(height: 20),
        Text(
          textAlign: TextAlign.justify,
          controller.list[index].plot,
          style: TextStyle(color: Colors.grey.shade800),
        ),
        const SizedBox(height: 40),
        const Text('Cast & Crew',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
        const SizedBox(height: 10),
        SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: controller.list[index].cast.map((value) {
                return Container(
                  width: 80,
                  margin: const EdgeInsets.only(right: 10),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(value['image']))),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          value['OriginalName'].toString(),
                          style: const TextStyle(fontWeight: FontWeight.w600),
                          maxLines: 2,
                        ),
                        const SizedBox(height: 3),
                        Text(
                          textAlign: TextAlign.center,
                          value['movieName'].toString(),
                          style: TextStyle(color: Colors.grey.shade700),
                          maxLines: 2,
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ))
      ]),
    );
  }
}
