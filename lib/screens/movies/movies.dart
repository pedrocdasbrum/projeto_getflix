import 'package:flutter/material.dart';
import 'package:projeto_getflix/providers/list_of_moveis.dart';
import 'package:projeto_getflix/shared/list_of_banner.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Populares na Getfix",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            ListOfBanner(popular),
            Text(
              "Em alta",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            ListOfBanner(onTheRise),
            Text(
              "Assista de novo",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            ListOfBanner(watchAgain),
          ],
        ),
      ),
    );
  }
}
