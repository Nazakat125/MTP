import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  CustomImage({super.key, this.height, this.width,  required this.image,this.fit});
  String image;
  double? height;
  double? width;
  BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: height,
      width: width,
      fit:fit,
    );
  }
}
