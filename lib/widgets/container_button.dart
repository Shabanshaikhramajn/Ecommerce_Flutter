import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {
 
  
final Color? bgColor;
final double? containerWith;
final String itext;

  const ContainerButtonModel({super.key, this.bgColor, this.containerWith, required this.itext});





  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: containerWith,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor
      ),
      child: Center(
        child: Text(
          itext,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}