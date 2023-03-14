import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../models/movie_model.dart';

class AppController extends GetxController {
  var selectedCategoryIndex = 0.obs;
  var selectedGenreIndex = 0.obs;
  var list = movies.obs;

  var pageController =
      PageController(viewportFraction: 0.8, initialPage: 0).obs;

  changeCatIndex(int index) {
    selectedCategoryIndex.value = index;
  }

  changeGenreIndex(int index) {
    selectedGenreIndex.value = index;
  }
}
