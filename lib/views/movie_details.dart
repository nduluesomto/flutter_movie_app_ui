import 'package:flutter/material.dart';
import 'package:flutter_movie_app_ui/widgets/details_section_two.dart';
import 'package:flutter_movie_app_ui/widgets/top_details_section.dart';
import 'package:get/get.dart';

class MovieDetails extends StatelessWidget {
  int index;
  MovieDetails({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () {
                  Get.back();
                })),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              DetailsHeader(index: index),
              const SizedBox(height: 5),
              SectionTwo(
                index: index,
              ),
            ],
          ),
        ));
  }
}
