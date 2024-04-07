import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator/screens/home_page/components/appbar.dart';
import 'package:invoice_generator/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: appBar(context: context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
              height: size.height * 0.18,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff7B3F00),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.profile_circled,
                            color: Color(0xffba9274),
                            size: 35,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Text(
                              '  CHOCO !!',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffba9274)),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, Routes.cart);
                                setState(() {});
                              },
                              icon: const Icon(Icons.cake_rounded,
                                  color: Color(0xffba9274), size: 35),
                            ),
                          ],
                        ),
                      ]))),
          const SizedBox(height: 10),
          GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1 / 1.02,
              children: [
                ...List.generate(
                  Routes.products.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          Routes.detail,
                          arguments: Routes.products[index],
                        );
                      },
                      child: Container(
                        height: size.height * 0.25,
                        padding: const EdgeInsets.all(7),
                        // color: Color(0xff7E6363),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              foregroundImage:
                                  NetworkImage(Routes.products[index]['image']),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              Routes.products[index]['name'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff7B3F00),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '${Routes.products[index]['price']} Rs.',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff7B3F00),
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
