// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LanguagesButten extends StatelessWidget {
  const LanguagesButten({super.key, required this.textButton, this.onPressed});
  final String textButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        margin: const EdgeInsets.all(4.8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(33)),
        width: double.infinity,
        child: ElevatedButton(
          // textColor: Colors.white,
          // color: const Color.fromRGBO(195, 194, 254, 1),
          style: const ButtonStyle(
              side: MaterialStatePropertyAll(BorderSide(
                  strokeAlign: 30,
                  color: Color.fromRGBO(195, 194, 254, 1),
                  width: 0.5)),
              backgroundColor: MaterialStatePropertyAll(
                Color.fromRGBO(195, 194, 254, 1),
              )),
          onPressed: onPressed,
          child: Text(
            textButton,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
