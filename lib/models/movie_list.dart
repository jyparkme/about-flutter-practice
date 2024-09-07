class MovieList {
  final bool adult, video;
  final String backdrop_path,
      original_language,
      original_title,
      overview,
      poster_path,
      release_date,
      title;
  final List<int> genre_ids;
  final int id, vote_count;
  final double popularity, vote_average;

  MovieList.fromJson(Map<String, dynamic> json)
      : adult = json['adult'] as bool,
        video = json['video'] as bool,
        backdrop_path = json['backdrop_path'] as String,
        original_language = json['original_language'] as String,
        original_title = json['original_title'] as String,
        overview = json['overview'] as String,
        poster_path = json['poster_path'] as String,
        release_date = json['release_date'] as String,
        title = json['title'] as String,
        genre_ids = List<int>.from(json['genre_ids']),
        id = json['id'] as int,
        vote_count = json['vote_count'] as int,
        popularity = (json['popularity'] as num).toDouble(),
        vote_average = (json['vote_average'] as num).toDouble();

  @override
  String toString() {
    return 'MovieModel{adult: $adult, video: $video, backdropPath: $backdrop_path, originalLanguage: $original_language, originalTitle: $original_title, overview: $overview, posterPath: $poster_path, releaseDate: $release_date, title: $title, genreIds: $genre_ids, id: $id, voteCount: $vote_count, popularity: $popularity, voteAverage: $vote_average}';
  }
}
