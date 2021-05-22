import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon,this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100, //Icon Size
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label,
            style: TextStyle(
                fontSize: 18
            ))
      ],
    );
  }
}
