import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice_generator/screens/cart_page/cart_page.dart';
import 'package:invoice_generator/screens/detail_page/detail_page.dart';
import 'package:invoice_generator/screens/home_page/homePage.dart';
import 'package:invoice_generator/screens/pdf_page/pdf_page.dart';
import 'package:invoice_generator/screens/splash_screen/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffba9274)),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        'home': (context) => const HomePage(),
        'detail': (context) => const DetailPage(),
        'cart': (context) => const CartPage(),
        'pdfPage': (context) => const PdfPage(),
      },
    );
  }
}
