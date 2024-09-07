class MovieDetail {
  final bool adult;
  final String backdrop_path;
  final Map<String, dynamic>? belongs_to_collection;
  final int budget;
  final List<GenreModel> genres;
  final String homepage;
  final int id;
  final String imdb_id;
  final List<String> origin_country;
  final String original_language;
  final String original_title;
  final String overview;
  final double popularity;
  final String poster_path;
  final List<ProductionCompanyModel> production_companies;
  final List<ProductionCountryModel> production_countries;
  final String release_date;
  final int revenue;
  final int runtime;
  final List<SpokenLanguageModel> spoken_languages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double vote_average;
  final int vote_count;

  MovieDetail.fromJson(Map<String, dynamic> json)
      : adult = json['adult'],
        backdrop_path = json['backdrop_path'],
        belongs_to_collection = json['belongs_to_collection'],
        budget = json['budget'],
        genres = (json['genres'] as List<dynamic>)
            .map((item) => GenreModel.fromJson(item))
            .toList(),
        homepage = json['homepage'],
        id = json['id'],
        imdb_id = json['imdb_id'],
        origin_country = List<String>.from(json['origin_country']),
        original_language = json['original_language'],
        original_title = json['original_title'],
        overview = json['overview'],
        popularity = (json['popularity'] as num).toDouble(),
        poster_path = json['poster_path'],
        production_companies = (json['production_companies'] as List<dynamic>)
            .map((item) => ProductionCompanyModel.fromJson(item))
            .toList(),
        production_countries = (json['production_countries'] as List<dynamic>)
            .map((item) => ProductionCountryModel.fromJson(item))
            .toList(),
        release_date = json['release_date'],
        revenue = json['revenue'],
        runtime = json['runtime'],
        spoken_languages = (json['spoken_languages'] as List<dynamic>)
            .map((item) => SpokenLanguageModel.fromJson(item))
            .toList(),
        status = json['status'],
        tagline = json['tagline'],
        title = json['title'],
        video = json['video'],
        vote_average = (json['vote_average'] as num).toDouble(),
        vote_count = json['vote_count'];

  @override
  String toString() {
    return 'MovieDetail{adult: $adult, backdrop_path: $backdrop_path, belongs_to_collection: $belongs_to_collection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdb_id: $imdb_id, origin_country: $origin_country, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, production_companies: $production_companies, production_countries: $production_countries, release_date: $release_date, revenue: $revenue, runtime: $runtime, spoken_languages: $spoken_languages, status: $status, tagline: $tagline, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count}';
  }
}

class GenreModel {
  final int id;
  final String name;

  GenreModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];

  @override
  String toString() {
    return 'GenreModel{id: $id, name: $name}';
  }
}

class ProductionCompanyModel {
  final int id;
  final String? logo_path;
  final String name;
  final String origin_country;

  ProductionCompanyModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        logo_path = json['logo_path'],
        name = json['name'],
        origin_country = json['origin_country'];

  @override
  String toString() {
    return 'ProductionCompanyModel{id: $id, logo_path: $logo_path, name: $name, origin_country: $origin_country}';
  }
}

class ProductionCountryModel {
  final String iso_3166_1;
  final String name;

  ProductionCountryModel.fromJson(Map<String, dynamic> json)
      : iso_3166_1 = json['iso_3166_1'],
        name = json['name'];

  @override
  String toString() {
    return 'ProductionCountryModel{iso_3166_1: $iso_3166_1, name: $name}';
  }
}

class SpokenLanguageModel {
  final String english_name;
  final String iso6391;
  final String name;

  SpokenLanguageModel.fromJson(Map<String, dynamic> json)
      : english_name = json['english_name'],
        iso6391 = json['iso_639_1'],
        name = json['name'];

  @override
  String toString() {
    return 'SpokenLanguageModel{english_name: $english_name, iso6391: $iso6391, name: $name}';
  }
}
