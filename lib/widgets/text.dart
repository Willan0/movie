import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

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
        children:    [
          const Text(title,style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: kFont2,
              fontFamily: 'Serif',
            color: bColor
          ),),
          const Gap(kG),
          const Text(voting,style: TextStyle(color: tColor),),
          const Gap(kG),
          IconButton(
              onPressed: () async{
                if(await canLaunchUrl(Uri.parse('https://www.youtube.com/watch?v=MmoBvmJA9XI'))){
                  launchUrl(Uri.parse('https://www.youtube.com/watch?v=MmoBvmJA9XI'),mode: LaunchMode.externalApplication);
                }else{
                  print("Url launch error");
                }
              },
              icon: const Icon(Icons.play_circle_outline_outlined,size: kIs,color: bColor))
        ],
      ),
    );
  }
}
