class Movie {
  final String name;
  final String image;

  Movie({
    required this.name,
    required this.image,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json.containsKey('title') ? json['title'] : json['name'],
      image: "http://image.tmdb.org/t/p/w500${json['poster_path']}",
    );
  }
}
