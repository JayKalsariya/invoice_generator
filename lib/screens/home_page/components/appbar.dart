import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/routes.dart';

AppBar appBar({required BuildContext context}) {
  return AppBar(
    backgroundColor: const Color(0xffba9274),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon:
          const Icon(CupertinoIcons.profile_circled, color: Color(0xff7B3F00)),
    ),
    title: const Text(
      'CHOCO 🍫',
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff7B3F00)),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.cart);
        },
        icon: const Icon(Icons.cake_rounded, color: Color(0xff7B3F00)),
      ),
    ],
  );
}
