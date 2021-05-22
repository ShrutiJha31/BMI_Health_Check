import 'package:flutter/material.dart';
int height=180;

class Slide extends StatefulWidget {
  int getheight()
  {
    return height;
  }
  @override
  _slideState createState() => _slideState();
}

class _slideState extends State<Slide> {

  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('HEIGHT',
            style: TextStyle(
                fontSize: 18
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(height.toString(),
                  style:TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900

                  )
              ),
              Text('cm',
                  style:TextStyle(
                      fontSize: 18
                  ))
            ],
          ),
          Slider(

            value:height.toDouble() ,
            min:100,
            max:300,
            inactiveColor: Color(0xFFFFF3E0),
            activeColor: Color(0xFFBF360C),
            onChanged: (double NewValue){
                 setState(() {
                   height=NewValue.round();
                 });
            },


          )

        ],
      );
  }
}
