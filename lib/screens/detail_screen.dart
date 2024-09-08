import 'package:flutter/material.dart';
import '../models/movie_detail.dart';
import '../services/api_service.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
    required this.id,
    required this.poster_path,
  });

  final int id;
  final String poster_path;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<MovieDetail> movieDetail;
  late String url;

  @override
  void initState() {
    super.initState();
    movieDetail = ApiService.getMovieDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 250,
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text(
            'Buy ticket',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Back to list'),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(
                  widget.poster_path,
                  fit: BoxFit.cover,
                  headers: const {
                    "User-Agent":
                        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                  },
                ).image,
              ),
            ),
          ),
          FutureBuilder<MovieDetail>(
            future: movieDetail,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snapshot.data!.title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Popularity: ${snapshot.data!.popularity}',
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Genres: ',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white),
                        ),
                        ...List.generate(snapshot.data!.genres.length, (index) {
                          return Text(
                            '${snapshot.data!.genres[index].name} ',
                            textAlign: TextAlign.left,
                            style: const TextStyle(color: Colors.white),
                          );
                        }),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Overview',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SingleChildScrollView(
                      child: Text(
                        snapshot.data!.overview,
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
    );
  }
}
