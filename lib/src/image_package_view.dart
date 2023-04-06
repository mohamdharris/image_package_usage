import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImagePackage extends StatefulWidget {
  const ImagePackage({super.key});

  @override
  State<ImagePackage> createState() => _ImagePackageState();
}

class _ImagePackageState extends State<ImagePackage> {
    Future<void> loadAsset() async {
    final assetData = await rootBundle.load('images/logo.jpg');

    // Do something with the asset data
    print("asserts loading from load Asset");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.50,
      width: MediaQuery.of(context).size.width*0.50,
      // color: Colors.amber,
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/logo.jpg'))),
      // child: const Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png')),
    );
  }
}