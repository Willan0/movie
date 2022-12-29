import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie/utils/appStyle.dart';
import 'package:movie/utils/movie.dart';
import 'package:movie/utils/photos.dart';

import 'constant/colors.dart';
import 'constant/dimens.dart';

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
        leading: Image.asset(Photo.menuImg,color: abC,height: kH3,),
        title: Image.asset(Photo.studioImg,width: kW3,height: kH2,),
        backgroundColor: abB,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(
              Icons.search,
            color: abC,
            size: kS1,
          )),
          const SizedBox(width: kW2,)
        ],
      ),
      body: Stack(
        children: [
          Image.asset(Photo.bgImg,
          width: getWidth(context),
          height: getHeight(context),
          fit: BoxFit.cover,
          ),
          Positioned(
            right: 0,
            top: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text('I want to eat \nYour \nPancreas\n(2018)',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    fontFamily: 'Serif'
                  ),),
                const Gap(5),
                Text('1hour 48mins           400votes',style: TextStyle(color: AppStyle.textColor),),
                const Gap(5),
                const Icon(Icons.play_circle_outline_outlined,size: 45,)
              ],
            ),

          ),
          Positioned(
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("K bones Cinema :related videos..",style: TextStyle(color: AppStyle.textColor,fontSize: 16,fontFamily: 'Serif',fontWeight: FontWeight.bold),),
                const Gap(5),
                Wrap(
                  spacing: 10,
                  direction: Axis.horizontal,
                  children: [
                    Movie( movies: Photo.bImg,),
                    Movie( movies: Photo.cImg,),
                    Movie( movies: Photo.dImg,),
                    Movie( movies: Photo.eImg,),
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
