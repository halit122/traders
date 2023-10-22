import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traders/controller/provider/myprovider.dart';
import 'package:traders/data/datasource/static/static.dart';

class OnBradingImageTitle extends StatelessWidget {
  const OnBradingImageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    var siz = MediaQuery.of(context).size;
    var counter = Provider.of<ControllerProvider>(context, listen: false);
    return Expanded(
      flex: 10,
      child: PageView.builder(
        onPageChanged: (value) {
          counter.pagechnag(value);
        },
        controller: counter.pageController,
        itemCount: onbaordingModle.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              size(10),
              Text(
                onbaordingModle[index].title.toString(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              size(20),
              Image.asset(
                onbaordingModle[index].image.toString(),
                fit: BoxFit.contain,
                height: siz.height * 0.5,
                width: siz.width,
              ),
              size(10),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "${onbaordingModle[index].body}",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

SizedBox size(
  double x,
) {
  return SizedBox(
    height: x,
  );
}
