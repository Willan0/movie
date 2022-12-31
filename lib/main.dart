import 'package:flutter/material.dart';
import 'package:movie/page/home_page.dart';


void main(){
  runApp(const MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
