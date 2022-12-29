import 'package:flutter/cupertino.dart';

class Movie extends StatelessWidget {
  final String movies;
  const Movie({Key? key,required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 200,
      child: Image.asset(movies,fit: BoxFit.cover,),
    );
  }
}
