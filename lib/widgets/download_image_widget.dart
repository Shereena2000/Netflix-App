import 'package:flutter/material.dart';
import 'dart:math';

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    super.key,
    this.angle = 0,
    required this.imageList,
    required this.margin,
    required this.size,
    required this.borderRadius,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            ),
          ),
        ),
      ),
    );
  }
}
