import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/appbar.dart';

import '../../utils/routes.dart';
import '../../utils/snackbar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Map<String, dynamic> product =
        (ModalRoute.of(context)?.settings.arguments ?? Routes.products[0])
            as Map<String, dynamic>;
    return Scaffold(
      appBar: appBar2(context: context, text: 'DetailPage'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: size.height * 0.56,
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xff7E6363),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name\t: ${product['name']}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Flavour\t: ${product['flavour']}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Weight\t: ${product['weight']}',
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Price\t: ${product['price']} Rs.',
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      height: size.height * 0.25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            product['image'],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                late SnackBar bar;
                if (cartList.contains(product)) {
                  bar = mySnackBar(
                      content: 'U already take CHOCO !!', color: Colors.red);
                } else {
                  cartList.add(product);
                  bar =
                      mySnackBar(content: 'CHOCO Take !!', color: Colors.green);
                }
                ScaffoldMessenger.of(context).showSnackBar(bar);
                // setState(() {});
              },
              child: Container(
                height: 50,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: const Color(0xff7B3F00),
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Take a CHOCO",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
