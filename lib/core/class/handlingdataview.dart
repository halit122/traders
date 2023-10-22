import 'package:flutter/material.dart';
import 'package:traders/core/class/stateRequest.dart';

class Handlingdataview extends StatelessWidget {
  final handling;
  final widget;
  Handlingdataview({super.key, this.handling, this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: handling == StatrRequest.loading
          ? const Center(
              child: Text("loading"),
            )
          : handling == StatrRequest.offlinefailuer
              ? const Center(
                  child: Text("offlinefaliuer"),
                )
              : handling == StatrRequest.severfailure
                  ? const Center(
                      child: Text("severfaliuer"),
                    )
                  : handling == StatrRequest.failure
                      ? const Center(
                          child: Text("No data"),
                        )
                      : const Center(
                          child: Text("success"),
                        ),
    );
  }
}
