import 'package:flutter/material.dart';

class MovieWidget extends StatelessWidget {
  final int id;
  final String title, poster_path;
  final bool? type;
  static const String poster_base = "https://image.tmdb.org/t/p/w500/";

  const MovieWidget(
      {super.key,
      required this.id,
      required this.title,
      required this.poster_path,
      this.type});

  @override
  Widget build(BuildContext context) {
    final double width = type == true ? 150.0 : 300.0;
    final double height = type == true ? 150.0 : 250.0;

    // Condition to determine if Text widget should be included
    final List<Widget> children = [
      Hero(
        tag: id,
        child: Container(
          width: width,
          height: height,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // boxShadow: [
            //   BoxShadow(
            //     blurRadius: 15,
            //     offset: const Offset(10, 10),
            //     color: Colors.black.withOpacity(0.5),
            //   ),
            // ],
          ),
          child: Image.network(
            '$poster_base$poster_path',
            headers: const {
              "User-Agent":
                  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
            },
            fit: BoxFit.fill,
          ),
        ),
      ),
      if (type == true) // Add Text widget only if type is not true
        Container(
          width: width,
          alignment: Alignment.centerLeft,
          child: Text(title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              softWrap: true),
        ),
    ];

    return GestureDetector(
      child: Column(
        children: children,
      ),
    );
  }
}
