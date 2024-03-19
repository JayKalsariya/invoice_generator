import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 7),
      () => Navigator.pushReplacementNamed(context, Routes.home),
    );
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image(image: AssetImage('assets/images/splash.gif')),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome To CADBURY World',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff7B3F00),
                ),
              ),
            ],
          ),
          SizedBox(height: 170),
          LinearProgressIndicator(color: Color(0xff7B3F00)),
        ],
      ),
    );
  }
}
