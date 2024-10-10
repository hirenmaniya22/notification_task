import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoaderWidget extends StatelessWidget {
  const LoaderWidget({super.key,this.color = Colors.white,this.height = 50,this.width = 50,this.radius = 15});

  final Color color;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(animating: true,color: color,radius: radius)/*CircularProgressIndicator(
        backgroundColor: color,
      )*/,
    );
  }
}