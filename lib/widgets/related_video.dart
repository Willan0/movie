import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';
import '../constant/dimens.dart';
import '../constant/photos.dart';
import '../constant/strings.dart';
import '../utils/movie.dart';

class RelatedVideo extends StatelessWidget {
  const RelatedVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: kPb1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(related,style: TextStyle(color: bColor,fontSize: kFont3,fontFamily: 'Serif',fontWeight: FontWeight.bold),),
          const Gap(kG),
          Wrap(
            spacing: kS1,
            direction: Axis.horizontal,
            children:  const [
              Movie( movies: bImg,),
              Movie( movies: cImg,),
              Movie( movies: dImg,),
              Movie( movies: eImg,),
            ],
          ),
        ],
      ),
    );
  }
}
