import 'package:flutter/material.dart';
import 'package:toonflix/services/api_service.dart';

void main() {
  ApiService.getMovieDetail(55555);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
