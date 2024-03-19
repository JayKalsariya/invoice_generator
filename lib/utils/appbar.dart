import 'package:flutter/material.dart';

AppBar appBar2({required BuildContext context, required String text}) {
  return AppBar(
    backgroundColor: const Color(0xffba9274),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Color(0xff7b3f00),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    title: Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Color(0xff7b3f00)),
    ),
  );
}
