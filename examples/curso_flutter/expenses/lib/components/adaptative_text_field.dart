// import 'dart:io';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onSubmitted;
  final TextInputType keyboardType;
  final String label;

  AdaptativeTextField({
    this.controller,
    this.onSubmitted,
    this.keyboardType,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    // return Platform.isIOS
    //     ? Container()
    //     : TextField(
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
