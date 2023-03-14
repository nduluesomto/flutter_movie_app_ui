import 'package:flutter/material.dart';

class RatingTab extends StatelessWidget {
  double rating;
  String metaScore;
  int criticsReviews;
  RatingTab(
      {Key? key,
      required this.rating,
      required this.metaScore,
      required this.criticsReviews})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Icon(Icons.star, color: Colors.yellow.shade700, size: 35),
          const SizedBox(height: 5),
          Text('${rating.toString()}/10',
              style: const TextStyle(fontWeight: FontWeight.w500))
        ]),
        Column(children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.star_border_outlined,
                size: 35,
              )),
          const Text('Rate This',
              style: TextStyle(fontWeight: FontWeight.w500)),
        ]),
        Column(children: [
          Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.circular(5)),
              child:
                  Text(metaScore, style: const TextStyle(color: Colors.white))),
          const SizedBox(height: 8),
          const Text('Metascore',
              style: TextStyle(fontWeight: FontWeight.w500)),
          Text('$criticsReviews critic reviews'),
        ]),
      ],
    );
  }
}
