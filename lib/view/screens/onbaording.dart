import 'package:flutter/material.dart';
import 'package:traders/view/widgets/onbaordingwidget/bouttmonbrading.dart';
import 'package:traders/view/widgets/onbaordingwidget/onbradingimages_title.dart';
import 'package:traders/view/widgets/onbaordingwidget/onbraodingcontllor.dart';


class OnBaordgin extends StatelessWidget {
  const OnBaordgin({super.key});

  @override
  Widget build(BuildContext context) {

    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1) ,
        body:  Column(
          children: [
            OnBradingImageTitle(),
            OnBraodingCantllor(),
            BouttnOnBrading(),
          ],
        ),
      ),
    );
  }

  SizedBox size(
    double x,
  ) {
    return SizedBox(
      height: x,
    );
  }
}
//Color.fromRGBO(195, 194, 254, 1)