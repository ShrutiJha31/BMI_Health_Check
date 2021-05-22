import 'package:bmi_calculator/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconData.dart';
import 'ReusableCard.dart';
import 'slider.dart';
import 'ResultPage.dart';


enum Gender {
  male,female
}

int weight=60;
int age=25;
int bmi=0;


Gender SelectedGender;
class MyHomePage extends StatefulWidget {
  int getweight()
  {
    return weight;
  }
  int getage()
  {
    return age;
  }
  String str=SelectedGender==Gender.male?'Male':'FEMALE';
  String returngender()
  {
    return str;
  }
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    const Color inactiveColor=Color(0xFFFF8465);
    const Color activeColor=Color(0XFFF57F17);
    return Column(

      children: [
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                 SelectedGender=Gender.male;
                });
              },
              child: ReusableCard(a: 200,b:190,
                  cardChild:IconContent(icon:FontAwesomeIcons.mars,label:'MALE'),
                  color:SelectedGender==Gender.male?activeColor:inactiveColor

              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  SelectedGender=Gender.female;
                });
              },
              child: ReusableCard(a:200,b:190,
                  cardChild:IconContent(icon:FontAwesomeIcons.venus,label:'FEMALE'),
                  color:SelectedGender==Gender.female?activeColor:inactiveColor
              ),
            )

          ],
        )),
        Expanded(child:ReusableCard(
            a:100,b:390, cardChild:Slide(),color:activeColor

        )),
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableCard(a: 200,b:190, cardChild:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WEIGTH',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                    weight.toString(),
                    style:TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900
                    )

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(onPressed:(){
                      setState(() {
                        weight=weight+1;
                      }
                      );

                    },
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                        SizedBox(
                          width:12
                        ),
                    FloatingActionButton(onPressed:(){
                      setState(() {
                        weight=weight-1;
                      }
                      );

                    },
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.remove,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                )

              ],
            ), color:activeColor),
            ReusableCard(a:200,b:190, cardChild:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'AGE',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                    age.toString(),
                    style:TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900
                    )

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(onPressed:(){
                      setState(() {
                        age=age+1;
                      }
                      );

                    },
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                        width:12
                    ),
                    FloatingActionButton(onPressed:(){
                      setState(() {
                        age=age-1;
                      }
                      );

                    },
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.remove,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                )

              ],
            ),  color:activeColor)
          ],
        )),

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage()));
          },
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'EVALUATE',
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
