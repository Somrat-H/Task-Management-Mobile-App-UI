// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// class BarcodeScannerDemo extends StatefulWidget {
//   const BarcodeScannerDemo({Key? key}) : super(key: key);
//   @override
//   _BarcodeScannerDemoState createState() => _BarcodeScannerDemoState();
// }
// class _BarcodeScannerDemoState extends State<BarcodeScannerDemo> {
//   String _scanBarcode = 'Unknown';
//   /// For Continuous scan
//   Future<void> startBarcodeScanStream() async {
//     FlutterBarcodeScanner.getBarcodeStreamReceiver(
//         '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
//         .listen((barcode) => print(barcode));
//   }
//   Future<void> barcodeScan() async {
//     String barcodeScanRes;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.QR);
//       print(barcodeScanRes);
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     }
//     if (!mounted) return;
//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter Barcode Scanner Demo'),
//           centerTitle: true,
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.cyan,
//         ),
//         body: Builder(builder: (BuildContext context) {
//           return Container(
//               alignment: Alignment.center,
//               child: Flex(
//                   direction: Axis.vertical,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     const Image(
//                       image: AssetImage("assets/logo.png"),
//                       height: 150,
//                     ),
//                     const SizedBox(
//                       height: 50,
//                     ),
//                     Text('Scan result : $_scanBarcode\n',
//                         style: const TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold)),
//                     SizedBox(
//                       height: 45,
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.cyan,
//                           ),
//                           onPressed: () => barcodeScan(),
//                           child: const Text('Barcode Scan',
//                               style: TextStyle(
//                                   fontSize: 17, fontWeight: FontWeight.bold))),
//                     ),
//                   ]));
//         }));
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'package:fast_barcode_scanner/fast_barcode_scanner.dart';
// //
// // class MyScannerScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(title: Text('Barcode Scanner')),
// //         body: BarcodeCamera(
// //           types: const [
// //             BarcodeType.ean8,
// //             BarcodeType.ean13,
// //             BarcodeType.code128
// //           ],
// //           resolution: Resolution.hd720,
// //           framerate: Framerate.fps30,
// //           mode: DetectionMode.pauseVideo,
// //           onScan: (code) => print(code),
// //           children: [
// //             MaterialPreviewOverlay(animateDetection: false),
// //             BlurPreviewOverlay(),
// //             Positioned(
// //               child: ElevatedButton(
// //                 onPressed: () =>
// //                     CameraController.instance.resumeDetector(),
// //                 child: Text('Resume'),
// //               ),
// //             )
// //           ],
// //         )
// //     );
// //   }
// // }