import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie/constant/strings.dart';
import 'package:movie/utils/movie.dart';
import 'constant/colors.dart';
import 'constant/dimens.dart';
import 'constant/photos.dart';

void main(){
  runApp(const MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        leading: Image.asset(menuImg,color: abC,height: kH3,),
        title: Image.asset(studioImg,width: kW3,height: kH2,),
        backgroundColor: abB,
        elevation: 0,
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
        children: [
          Image.asset(bgImg,
          width: getWidth(context),
          height: getHeight(context),
          fit: BoxFit.cover,
          ),
          Positioned(
            right: kPr1,
            top: kPt1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  const [
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

          ),
          Positioned(
            bottom: kPb1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(related,style: TextStyle(color: textColor,fontSize: kFont3,fontFamily: 'Serif',fontWeight: FontWeight.bold),),
                const Gap(kG),
                Wrap(
                  spacing: kS1,
                  direction: Axis.horizontal,
                  children: const [
                    Movie( movies: bImg,),
                    Movie( movies: cImg,),
                    Movie( movies: dImg,),
                    Movie( movies: eImg,),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
