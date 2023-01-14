import 'package:flutter/cupertino.dart';
import 'package:movie/constant/dimens.dart';

class Movie extends StatelessWidget {
  final String movies;
  const Movie({Key? key,required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kW1,
      height: kH1,
      child: Image.asset(movies,fit: BoxFit.cover,),
    );
  }
}
