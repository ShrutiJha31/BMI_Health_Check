import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({this.a,this.b,this.cardChild,this.color});
  final double a;
  final double b;
  final Widget cardChild;
  final Color color;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      color: color,
      height:a,
      width:b,
      child: cardChild,
    );
  }
}

