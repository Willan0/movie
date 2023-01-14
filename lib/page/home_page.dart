import 'package:flutter/material.dart';

import 'package:movie/widgets/background_screen.dart';
import 'package:movie/widgets/related_video.dart';
import 'package:movie/widgets/text.dart';

import '../constant/colors.dart';
import '../constant/dimens.dart';
import '../utils/photos.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          leading: Image.asset(menuImg,color: abC,height: kH3,),
          title: Image.asset(studioImg,width: kW3,height: kH2,),
          backgroundColor: abB,
          elevation: kPr1,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(
              Icons.search,
              color: abC,
              size: kIs1,
            )),
            const SizedBox(width: kW2,)
          ],
        ),
        body: Stack(
          children: const [
            BackgroundScreen(),
            TextWidgets(),
            RelatedVideo()
          ],
        )
    );
  }
}
