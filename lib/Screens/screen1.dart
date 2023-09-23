
import 'package:bmi_calculator/Screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screens/data.dart';

class Screen1 extends StatefulWidget{
  static const Route ='/';

  Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool _male = false;
  bool _female =false;
  int height=150;
  int weight =60;
  int age = 25;
bool gender = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI CALCULATOR",
          style: TextStyle(fontWeight: FontWeight.w700,),
            textAlign: TextAlign.center),
        backgroundColor:const Color(0xff1d2136) ,
      ),

      backgroundColor: Color(0xff1d2136),
      body:

      Column(
        children: [
          SizedBox(height: 10,),

          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              ElevatedButton(
                style:  ElevatedButton.styleFrom(
                  backgroundColor: _male ? Color(0xff323244):Color(0xff24263b),
                    padding: const EdgeInsets.symmetric(horizontal:30),
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                    //elevation:25,
                    // shadowColor: Colors.blue,
                    textStyle: const TextStyle(fontSize:18,color: Colors.grey),
                  minimumSize: Size((MediaQuery.of(context).size.width-50)/2,
                                  (MediaQuery.of(context).size.height-50)/4)
,

                ),
                onPressed: () {
                  setState(() {
                  _male = !_male;
                  _female=false;
                  gender=_male;
                  });
                },

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.male,color: Colors.white,size: 90),
                    Text("MALE",style: TextStyle(color: Colors.grey,height: 2),),
                  ],
                ),
              ),

              ElevatedButton(
                style:  ElevatedButton.styleFrom(
                    backgroundColor: _female ?  Color(0xff323244):Color(0xff24263b) ,
                    padding: const EdgeInsets.symmetric(horizontal:30),
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                    //elevation:25,
                    // shadowColor: Colors.blue,
                    textStyle: const TextStyle(fontSize:18,color: Colors.grey),
                                              minimumSize: Size((MediaQuery.of(context).size.width-50)/2, (MediaQuery.of(context).size.height-50)/4)

                ),
                onPressed: () {
                  setState(() {
                    _female = !_female ;
                    _male=false;
                    gender=true;
                });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.female,color: Colors.white,size: 90),
                    Text("FEMALE",style: TextStyle(color: Colors.grey,height: 2),),
                  ],
                ),
              ),
            ],
          ),


          SizedBox(height: 20,),


          Container(
            width:  MediaQuery.of(context).size.width-26,
            height: 180,
            padding: EdgeInsets.symmetric(horizontal: 0,vertical: 20),
            decoration: BoxDecoration(
              color: Color(0xff323244),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("HEIGHT",
                  style: TextStyle(color: Colors.grey,height: 2,fontSize: 18),),

               // Text("${current.toString()}",style: TextStyle(color: Colors.white,fontSize: 18),),

                RichText(
                  text: TextSpan(
                    text: "${height.toString()}",
                    style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.w900),
                    children: const <TextSpan>[
                      TextSpan(text: 'cm', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16)),
                    ],
                  ),
                ),
                Slider(
                    value: height.toDouble() ,
                    max: 200.toInt()+1.0,
                    min: 140.toInt()+1.0,
                  //divisions: 5,
                  activeColor: Color(0xffc9486a),
                  inactiveColor: Colors.grey,
                  //label:'hiii',
                  onChanged: (double value){
                    setState(() {
                      height= value.toInt();
                    });
                  },

                ),

              ],
            ),
          ),

          SizedBox(height: 25,),

          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                padding: EdgeInsets.all(20),
                width:(MediaQuery.of(context).size.width-50)/2,
                height:    (MediaQuery.of(context).size.height-50)/4,
                decoration: BoxDecoration(
                  color: Color(0xff323244),
                  borderRadius: BorderRadius.circular(15)

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("WEIGHT",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    Text("${weight}",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.w900),),
                    Row(
                      children: [
                        FloatingActionButton(
                          backgroundColor:Color(0xff5d5f6e),
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                          child: Icon(Icons.remove,size: 35,)

                        ),

                        SizedBox(width: 10),

                        FloatingActionButton(
                          backgroundColor:Color(0xff5d5f6e),
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          child: Icon(Icons.add,size: 35,),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width:(MediaQuery.of(context).size.width-50)/2,
                height:    (MediaQuery.of(context).size.height-50)/4,
                decoration: BoxDecoration(
                    color: Color(0xff323244),
                    borderRadius: BorderRadius.circular(15)

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Age",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    Text("${age}",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.w900),),
                    Row(
                      children: [
                        FloatingActionButton(
                            backgroundColor:Color(0xff5d5f6e),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: Icon(Icons.remove,size: 35,)

                        ),

                        SizedBox(width: 10),

                        FloatingActionButton(
                          backgroundColor:Color(0xff5d5f6e),
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          child: Icon(Icons.add,size: 35,),
                        ),

                      ],
                    ),
                  ],
                ),
              ),



            ],
          ),

          SizedBox(height: 20,),

          Expanded(
            child: Container(
              height: 61,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffe83d66),

                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))
              ),
              child: TextButton(
                  onPressed: () {
                    if (gender==true){
                    Navigator.pushNamed(context,
                        Screen2.Route,
                        arguments:Data(gender, height , weight, age)
                    );}

                  },
              child: Text("CALCULATE",
                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                  shadows: <Shadow>[
                    Shadow(
                    offset: Offset(3, 0),
                   blurRadius: 1.0,
                color:Colors.grey[700]! ,
              ),
                Shadow(
                  offset: Offset(-3, -3),
                  blurRadius: 8.0,
                  color: Color(0xffac5873),
                ),
                ],
              ),
            ),
              )),
          ),

        ],
      ),

    );
  }
}
