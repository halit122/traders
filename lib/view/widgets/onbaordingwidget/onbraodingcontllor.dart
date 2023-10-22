import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traders/controller/provider/myprovider.dart';
import 'package:traders/data/datasource/static/static.dart';

class OnBraodingCantllor extends StatelessWidget {
  const OnBraodingCantllor({super.key});

  @override
  Widget build(BuildContext context) {
    int indexpage = Provider.of<ControllerProvider>(context).index;
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onbaordingModle.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: indexpage == index ? 15 : 6,
              height: indexpage == index ? 15 : 6,
              child: CircleAvatar(
                backgroundColor: indexpage == index
                    ? Color.fromARGB(255, 199, 163, 255)
                    : Color.fromARGB(255, 141, 241, 243),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
