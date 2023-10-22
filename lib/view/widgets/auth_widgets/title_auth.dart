import 'package:flutter/material.dart';
class TitleAuth extends StatelessWidget {
   const TitleAuth({super.key, required this.title});
  final String title ;
  @override
  Widget build(BuildContext context) {
    return Text(
               title  ,
                textAlign: TextAlign.center,
                style:const  TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              );
  }
}