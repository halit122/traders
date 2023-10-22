import 'package:flutter/material.dart';

import 'core/function/checkintrent.dart';

class Test extends StatefulWidget {
  Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String Inte = "";

  initsdata() {
    
    setState(() {
      var res = ckeckinternt();
      Inte = res == true ? "true" : "false";
    });
  }

  @override
  void initState() {
    initsdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            "$Inte",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
