import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:bmi_calculator/Calculate.dart';


class BMIFINAL extends StatelessWidget {

String str=(Calculate().bmi<18.5)?'YOU ARE UNDERWEIGHT,GRAB SOME FOOD!':(Calculate().bmi<=25)?'CONGRATS YOU ARE NORMAL':'YOU ARE OVERWEIGHT, PLAN YOUR DIET AND DO SOME EXERCISE';

  @override
  Widget build(BuildContext context) {
    return
      Column(

       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Text(
               'RESULT',

               style: TextStyle(
                 fontSize: 40,

               ),
             )
           ],
         ),
         SizedBox(
           height:80
         ),
         Text(
           Calculate().bmi.toStringAsFixed(2),
           style: TextStyle(
             fontSize: 50,
             fontWeight: FontWeight.bold
           ),
         ),
         SizedBox(
           height:100,

         ),
         Text(
           str,

           style: TextStyle(

               fontSize: 30,
               fontWeight: FontWeight.bold
           ),
           textAlign: TextAlign.center,
         ),

         SizedBox(
           height:150,

         ),

         GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
           },
           child: Container(
               alignment: Alignment.center,
               child: Text(
                   'REVALUATE',
                   style:TextStyle(
                       fontSize: 30,
                       fontWeight: FontWeight.w500
                   )
               ),
               margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
               color: Color(0xFFE65100),
               height:90,
               width:390
           ),
         )

       ],
      );
  }
}
