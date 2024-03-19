import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice_generator/utils/routes.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../utils/appbar.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

int total = 1125;

class _PdfPageState extends State<PdfPage> {
  Future<Uint8List> loadInvoice() async {
    //1. Create Object
    pw.Document doc = pw.Document();
    ByteData byteData = await rootBundle.load("assets/images/logo.png");
    //2. Design Pdf
    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Padding(
            padding: const pw.EdgeInsets.all(5),
            child: pw.Column(
              children: [
                pw.Container(
                  padding: const pw.EdgeInsets.all(5),
                  height: 100,
                  width: double.infinity,
                  // color: PdfColors.grey,
                  child: pw.Row(
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            'Invoice',
                            style: pw.TextStyle(
                              fontSize: 30,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Spacer(),
                          pw.Text(
                            'Date\t\t\t : ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                            style: const pw.TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          pw.Text(
                            'Bill No : ${Random().nextInt(1000)}',
                            style: const pw.TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      pw.Spacer(),
                      pw.Image(
                        pw.MemoryImage(
                          byteData.buffer.asUint8List(),
                        ),
                        height: 180,
                      ),
                    ],
                  ),
                ),
//Data Table
                pw.SizedBox(height: 10),
                pw.Container(
                  padding: const pw.EdgeInsets.all(5),
                  height: 500,
                  width: double.infinity,
                  // color: PdfColors.grey,
                  child: pw.Row(
                    children: [
                      pw.Container(
                        padding: const pw.EdgeInsets.all(5),
                        width: 50,
                        height: 480,
                        decoration: pw.BoxDecoration(
                          border:
                              pw.Border.all(width: 1.5, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(5),
                        ),
                        child: pw.Column(
                          children: [
                            pw.Text(
                              'No.',
                              style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold, fontSize: 20),
                            ),
                            pw.SizedBox(height: 10),
                            ...cartList.map(
                              (e) => pw.Text(
                                '${cartList.indexOf(e) + 1}',
                                style: const pw.TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      pw.SizedBox(width: 5),
                      pw.Container(
                        padding: const pw.EdgeInsets.all(5),
                        width: 200,
                        height: 480,
                        decoration: pw.BoxDecoration(
                          border:
                              pw.Border.all(width: 1.5, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(5),
                        ),
                        child: pw.Column(
                          children: [
                            pw.Text('Title'),
                            pw.SizedBox(height: 10),
                            ...cartList.map(
                              (e) => pw.Text(
                                e['name'],
                                style: const pw.TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      pw.SizedBox(width: 5),
                      pw.Container(
                        padding: const pw.EdgeInsets.all(5),
                        width: 65,
                        height: 480,
                        decoration: pw.BoxDecoration(
                          border:
                              pw.Border.all(width: 1.5, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(5),
                        ),
                        child: pw.Column(
                          children: [
                            pw.Text('Qty.'),
                            pw.SizedBox(height: 10),
                            ...cartList.map(
                              (e) => pw.Text(
                                '${e['qty']}',
                                style: const pw.TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      pw.SizedBox(width: 5),
                      pw.Container(
                        padding: const pw.EdgeInsets.all(5),
                        width: 55,
                        height: 480,
                        decoration: pw.BoxDecoration(
                          border:
                              pw.Border.all(width: 1.5, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(5),
                        ),
                        child: pw.Column(
                          children: [
                            pw.Text('Price'),
                            pw.SizedBox(height: 10),
                            ...cartList.map(
                              (e) => pw.Text(
                                '${e['price']} /-',
                                style: const pw.TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      pw.SizedBox(width: 5),
                      pw.Container(
                        padding: const pw.EdgeInsets.all(5),
                        width: 70,
                        height: 480,
                        decoration: pw.BoxDecoration(
                          border:
                              pw.Border.all(width: 1.5, color: PdfColors.black),
                          borderRadius: pw.BorderRadius.circular(5),
                        ),
                        child: pw.Column(
                          children: [
                            pw.Text('Amt.'),
                            pw.SizedBox(height: 10),
                            ...cartList.map(
                              (e) => pw.Text(
                                '${e['price'] * e['qty']} /-',
                                style: const pw.TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 5),
                pw.Container(
                  padding: const pw.EdgeInsets.all(5),
                  width: double.infinity,
                  height: 30,
                  decoration: pw.BoxDecoration(
                    border: pw.Border.all(width: 1.5, color: PdfColors.black),
                    borderRadius: pw.BorderRadius.circular(5),
                  ),
                  child: pw.Row(
                    children: [
                      pw.SizedBox(width: 150),
                      pw.Text(
                        'Total',
                        style: const pw.TextStyle(fontSize: 20),
                      ),
                      // pw.SizedBox(width: 10),
                      pw.Spacer(),
                      pw.Text(
                        '$total /-',
                        style: const pw.TextStyle(fontSize: 20),
                      ),
                      pw.SizedBox(width: 10),
                    ],
                  ),
                ),
                pw.SizedBox(height: 5),
                pw.Container(
                  padding: const pw.EdgeInsets.all(5),
                  width: double.infinity,
                  height: 68.5,
                  decoration: pw.BoxDecoration(
                    border: pw.Border.all(width: 1.5, color: PdfColors.black),
                    borderRadius: pw.BorderRadius.circular(5),
                  ),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      // pw.Text(
                      //   '* Read It',
                      //   style: pw.TextStyle(
                      //     fontSize: 16,
                      //     fontWeight: pw.FontWeight.bold,
                      //   ),
                      // ),
                      pw.Text(
                        '- We value your feedback! Please take a moment to let us know how we.',
                        style: const pw.TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      pw.Text(
                        "- Don't forget to check out our latest products/offers at our website.",
                        style: const pw.TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      pw.Text(
                        "- Thank you for choosing Cadbury. We appreciate your business!",
                        style: const pw.TextStyle(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
    //3. Convert into Uint8List
    return await doc.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar2(context: context, text: 'Pdf Page'),
      body: PdfPreview(
        build: (format) => loadInvoice(),
      ),
    );
  }
}
