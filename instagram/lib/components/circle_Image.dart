import 'package:flutter/material.dart';
import 'package:instagram/main.dart';
class CircleImage extends StatelessWidget {
  CircleImage({Key? key, required this.img, required this.width, required this.height}) : super(key: key);
String img;
double width;
double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(img),
      ),
    );
  }
}
