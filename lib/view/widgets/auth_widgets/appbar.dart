import 'package:flutter/material.dart';

PreferredSizeWidget? appbarauth(String title) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    shadowColor: Colors.white,
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(color: Color.fromARGB(255, 101, 103, 101)),
    ),
  );
}
