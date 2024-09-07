import 'package:flutter/material.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/widgets/movie_widget.dart';

import '../models/movie_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<MovieList>> popularMovieList = ApiService.getMovieList();
  final Future<List<MovieList>> playingMovieList = ApiService.getMovieList("P");
  final Future<List<MovieList>> comingMovieList = ApiService.getMovieList("C");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: FutureBuilder(
              future: Future.wait(
                [popularMovieList, playingMovieList, comingMovieList],
              ),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No data available'));
                }

                final popularMovies = snapshot.data![0];
                final playingMovies = snapshot.data![1];
                final comingMovies = snapshot.data![2];
                if (snapshot.hasData) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Popular Movies',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 300,
                          child: makeMovieList(popularMovies),
                        ),
                        const Text(
                          'Now in Cinemas',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 250,
                          child: makeMovieList(playingMovies, true),
                        ),
                        const Text(
                          'Coming soon',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 250,
                          child: makeMovieList(comingMovies, true),
                        ),
                      ],
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
        ),
      ),
    );
  }
}

ListView makeMovieList(List<MovieList> movies, [bool type = false]) {
  return ListView.separated(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      var movie = movies[index];
      return MovieWidget(
        id: movie.id,
        title: movie.title,
        poster_path: movie.poster_path,
        type: type,
      );
    },
    separatorBuilder: (context, index) => const SizedBox(width: 15),
    itemCount: movies.length,
  );
}
