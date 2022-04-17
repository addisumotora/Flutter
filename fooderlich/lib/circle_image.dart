import 'package:flutter/material.dart';

class CricleImage extends StatelessWidget {
  const CricleImage(this.imageRadius,this.imageProvider,{ Key? key }) : super(key: key);

 final double imageRadius;
 final ImageProvider? imageProvider;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        radius: imageRadius-1,
        backgroundImage: imageProvider,
      ),
    );
  }
}