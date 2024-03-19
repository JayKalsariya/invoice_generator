import 'package:flutter/material.dart';

SnackBar mySnackBar({
  String content = "MySnackBar",
  Color color = Colors.green,
}) {
  return SnackBar(
    content: Text(content),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
  );
}
