import 'dart:convert';
import 'package:flutter/material.dart';

class UtfScreen extends StatefulWidget {
  const UtfScreen({Key? key}) : super(key: key);

  @override
  State<UtfScreen> createState() => _UtfScreenState();
}

class _UtfScreenState extends State<UtfScreen> {
  final TextEditingController _controller = TextEditingController();
  // QRViewController ? Controller;
  // final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  // var result = "";
  // ignore: prefer_typing_uninitialized_variables
  var encode;
  // ignore: prefer_typing_uninitialized_variables
  var decode;

  // Widget scanner(BuildContext context) {
  //   return  MobileScanner(
  //       fit: BoxFit.contain,
  //       controller: MobileScannerController(
  //         facing: CameraFacing.back,
  //         torchEnabled: false,
  //         returnImage: true,
  //       ),
  //       onDetect: (capture) {
  //         final List<Barcode> barcodes = capture.barcodes;
  //         final Uint8List? image = capture.image;
  //         for (final barcode in barcodes) {
  //           debugPrint('Barcode found! ${barcode.rawValue}');
  //         }
  //         if (image != null) {
  //           showDialog(
  //             context: context,
  //             builder: (context) =>
  //                 Image(image: MemoryImage(image)),
  //           );
  //           Future.delayed(const Duration(seconds: 5), () {
  //             Navigator.pop(context);
  //           });
  //         }
  //       },
  //     );
  //
  // }

  // void _onQRViewCreated(QRViewController controller) {
  //   setState(() {
  //     this._controller = _controller;
  //   });
  //   controller.resumeCamera();
  //   controller.scannedDataStream.listen((scanData) {
  //     setState(() {
  //       result = scanData as String;
  //     });
  //   });
  // }
  // Widget _buildQrView(BuildContext context) {
  //   // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
  //   var scanArea = (MediaQuery.of(context).size.width < 400 ||
  //       MediaQuery.of(context).size.height < 400)
  //       ? 150.0
  //       : 300.0;
  //   // To ensure the Scanner view is properly sizes after rotation
  //   // we need to listen for Flutter SizeChanged notification and update controller
  //   return QRView(
  //     key: qrKey,
  //     onQRViewCreated: _onQRViewCreated,
  //     overlay: QrScannerOverlayShape(
  //         borderColor: Colors.red,
  //         borderRadius: 10,
  //         borderLength: 30,
  //         borderWidth: 10,
  //         cutOutSize: scanArea),
  //     // onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
  //   );
  // }
  void endcoing() {
    var strBytes = utf8.encode(_controller.text.toString());
    // encode = base64Encode(strBytes);
    encode = strBytes;
    setState(() {});
  }

  void decoding() {
    // var decodeBytes = base64Decode(encode);
    decode = utf8.decode(encode);
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Enter your Data',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                color: Colors.purple,
                onPressed: () {
                  endcoing();
                  setState(() {});
                },
                child: const Text('Endcode'),
              ),
              const SizedBox(
                height: 20,
              ),
              encode == null
                  ? const Text('Endcode Data : No data found')
                  : Text("Encode Data : $encode"),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                color: Colors.deepPurple,
                onPressed: () {
                  decoding();
                  setState(() {});
                },
                child: const Text('Decode the encoding data'),
              ),
              const SizedBox(
                height: 20,
              ),
              decode == null
                  ? const Text('Decode data : no data found')
                  : Text('Decode data : $decode'),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=> BarcodeScannerDemo()));
                },
                child: const CircleAvatar(
                  maxRadius: 30,
                  child: Icon(
                    Icons.qr_code_scanner,
                    size: 28,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
