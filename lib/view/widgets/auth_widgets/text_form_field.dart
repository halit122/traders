import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AuthTextForm extends StatelessWidget {
  AuthTextForm({
    super.key,
    required this.habedText,
    required this.hintText1,
    required this.editingController,
    required this.validator,
    this.suffixIcon,
    this.showCursor,
    this.isNUmber,
    this.isEmail,
    required this.ispassword,
  });
  final bool? ispassword;
  final bool? isEmail;
  final bool? isNUmber;
  String? Function(String?)? validator;
  final String? habedText;
  final String? hintText1;
  final TextEditingController? editingController;
  final Widget? suffixIcon;
  final bool? showCursor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        obscureText: ispassword!,
        keyboardType: isNUmber == true
            ? TextInputType.phone
            : isEmail == true
                ? TextInputType.emailAddress
                : null,
        cursorColor: const Color.fromARGB(255, 199, 163, 255),
        validator: validator,
        showCursor: showCursor,
        controller: editingController,
        decoration: InputDecoration(
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 199, 163, 255),
            ),
          ),
          suffixIconColor: const Color.fromARGB(255, 199, 163, 255),
          focusColor: const Color.fromARGB(255, 199, 163, 255),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 199, 163, 255),
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 199, 163, 255), width: 1),
          ),
          floatingLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 199, 163, 255),
            decorationColor: Color.fromARGB(255, 199, 163, 255),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          label: Text(
            habedText!,
          ),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 199, 163, 255),
            ),
            borderRadius: BorderRadius.circular(28),
          ),
          hintText: hintText1,
        ),
      ),
    );
  }
}
