import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';
import '../constant/dimens.dart';
import '../constant/strings.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      right: kPr1,
      top: kPt1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:   const [
          Text(title,style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: kFont2,
              fontFamily: 'Serif'
          ),),
          Gap(kG),
          Text(voting,style: TextStyle(color: textColor),),
          Gap(kG),
          Icon(Icons.play_circle_outline_outlined,size: kIs,)
        ],
      ),
    );
  }
}
