class MovieModel {
  final int id;
  final int year;
  final int ratingsTotal;
  final int criticsReviews;
  final int metaRating;
  final double rating;
  final int ageRating;
  final String duration;
  final List<String> genra;
  final String plot;
  final String title, poster;

  // final String backDrop;
  final List<Map> cast;

  MovieModel(
      {required this.id,
      required this.year,
      required this.ratingsTotal,
      required this.criticsReviews,
      required this.metaRating,
      required this.rating,
      required this.ageRating,
      required this.duration,
      required this.genra,
      required this.plot,
      required this.title,
      required this.poster,
      // required this.backDrop,
      required this.cast});
}

List<MovieModel> movies = [
  MovieModel(
      id: 1,
      year: 2022,
      ratingsTotal: 31354,
      criticsReviews: 30,
      metaRating: 60,
      rating: 8.0,
      ageRating: 15,
      duration: '1h 52min',
      genra: ['Action', 'Comedy'],
      // plot: plot,
      title: 'The Man from Toronto',
      poster: 'lib/assets/images/man_from_toronto.jpg',
      // backDrop: backDrop,
      cast: [
        {
          "OriginalName": "Patrick Hughes",
          "movieName": "Director",
          "image": 'lib/assets/images/actor_movie_1_1.jpeg',
        },
        {
          "OriginalName": "Kevin Hart",
          "movieName": "Teddy",
          "image": 'lib/assets/images/actor_movie_1_2.jpeg',
        },
        {
          "OriginalName": "Kaley Cuoco",
          "movieName": "Anne",
          "image": 'lib/assets/images/actor_movie_1_3.jpeg',
        },
        {
          "OriginalName": "Jasmine Mathews",
          "movieName": "Lori",
          "image": 'lib/assets/images/actor_movie_1_4.jpeg',
        }
      ],
      plot:
          'A case of mistaken identity forces a bumbling entrepreneur to team up with a notorious assassin in hopes of staying alive.'),
  MovieModel(
      id: 2,
      year: 2022,
      ratingsTotal: 61683,
      criticsReviews: 15,
      metaRating: 20,
      rating: 5.5,
      ageRating: 16,
      duration: '2h 46min',
      genra: ['Drama'],
      // plot: plot,
      title: 'Blonde',
      poster: 'lib/assets/images/blonde.jpg',
      // backDrop: backDrop,
      cast: [
        {
          "OriginalName": "Andrew Dominik",
          "movieName": "Director",
          "image": 'lib/assets/images/actor_movie_2_1.jpeg',
        },
        {
          "OriginalName": "Ana de Armas",
          "movieName": "Marilyn Monroe",
          "image": 'lib/assets/images/actor_movie_2_2.jpeg',
        },
        {
          "OriginalName": "Sara Paxton",
          "movieName": "Miss Flynn",
          "image": 'lib/assets/images/actor_movie_2_3.jpeg',
        },
        {
          "OriginalName": "Julianne Nicholson",
          "movieName": "Gladys",
          "image": 'lib/assets/images/actor_movie_2_4.jpeg',
        }
      ],
      plot:
          'Norma Jeane has an unhappy childhood with a mentally challenged abusive mother. As an adult her misery continues when she enters the big bad world of Hollywood where she is sexually exploited at every stage. Her dream of motherhood and a settled domestic life remains unfulfilled and she gets addicted to drugs. Her life goes into a downward spiral from where she does not recover.'),
  MovieModel(
      id: 3,
      year: 2021,
      ratingsTotal: 18915,
      criticsReviews: 65,
      ageRating: 18,
      duration: '1h 42min',
      metaRating: 80,
      rating: 6.2,
      genra: ['Romance', 'Comedy'],
      // plot: plot,
      title: 'The Hating Game',
      poster: 'lib/assets/images/hating_game.jpeg',
      // backDrop: backDrop,
      cast: [
        {
          "OriginalName": "Peter Hutchings",
          "movieName": "Director",
          "image": 'lib/assets/images/actor_movie_3_1.jpg',
        },
        {
          "OriginalName": "Lucy Hale",
          "movieName": "Lucy Hutton",
          "image": 'lib/assets/images/actor_movie_3_2.jpeg',
        },
        {
          "OriginalName": "Austin Stowell",
          "movieName": "Joshua Templeman",
          "image": 'lib/assets/images/actor_movie_3_3.jpeg',
        },
        {
          "OriginalName": "Kathryn Boswell",
          "movieName": "Mindy",
          "image": 'lib/assets/images/actor_movie_3_4.jpeg',
        }
      ],
      plot:
          'Resolving to achieve professional success without compromising her ethics, Lucy embarks on a ruthless game of one-upmanship against cold and efficient nemesis Joshua, a rivalry that is complicated by her growing attraction to him.'),
];
