import 'package:flutter/material.dart';

class ImageSelector extends StatelessWidget {
  final VoidCallback onTap;
  final double height;
  final double width;
  final DecorationImage image;
  final double borderRadius;

  ImageSelector({
    this.borderRadius,
    this.height,
    this.image,
    this.onTap,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            // color: Colors.transparent,
            borderRadius: BorderRadius.circular(borderRadius),
            image: image,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
