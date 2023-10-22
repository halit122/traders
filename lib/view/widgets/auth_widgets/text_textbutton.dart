import 'package:flutter/material.dart';


class TextAuthTextButton extends StatelessWidget {
   const  TextAuthTextButton(
      {super.key, required this.texttitle, required this.textbutton, this.onPressed});
  final String texttitle;
  final String textbutton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(texttitle),
        TextButton(
          onPressed: onPressed,
          child: Text(textbutton),
        ),
      ],
    );
  }
}
