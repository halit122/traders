import 'package:flutter/material.dart';

class BodyAuth extends StatelessWidget {
   const BodyAuth({super.key, this.bodytext});
  final String? bodytext;
  @override
  Widget build(BuildContext context) {
    return Text(
      bodytext! ,
      textAlign: TextAlign.center,
      style:const  TextStyle(fontSize: 20),
    );
  }
}
