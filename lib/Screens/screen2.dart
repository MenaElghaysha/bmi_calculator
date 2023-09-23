import 'package:bmi_calculator/Screens/data.dart';
import 'package:bmi_calculator/Screens/screen1.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget{
  static const Route ='/screen2';
  @override
  Widget build(BuildContext context) {

     Data?data=(ModalRoute.of(context)?.settings.arguments as Data?);

     double calculateBMI(int weight, int height) {

       return weight / ((height / 100) * (height / 100));
     }
     double BMI =calculateBMI(data?.weight as int, (data?.height as int)! );

      String status ="Normal";
      String comment="";
      Color color =Colors.white;

     if ((data?.age!)as int  >= 20){
       if(BMI <18.5)  {
         status="Underweight";
         color=Colors.orange;
         comment="you have underweight body weight.\n "
             "could be a sign you're not eating enough or you may be ill";

       }
       else if(BMI>=18.5 && BMI<=24.9)  {
         status ='NORMAL';
         comment="You have a normal body weight. \n Good job!";
         color =Colors.green;
       }
       else if (BMI >=25 && BMI <=29.9) {
         status ='	Overweight';
       color=Colors.yellow;
       comment='You have an overweight body weight .\n'
           'The best way to lose weight is through a combination of diet and exercise. ';
       }
       else {
         status=  'Obesity';
       color=Colors.red;
       comment='You are obese .\n Over time you should work towards achieving a healthier weight.';
       }

     }else{
       if(BMI <15)  {
         status="Underweight";
         color=Colors.orange;
         comment="you have underweight body weight . \n "
             "could be a sign you're not eating enough or you may be ill";
       }
       else if(BMI>=15 && BMI<85)  {
         status ='NORMAL';
         comment="You have a normal body weight. \n Good job!";
         color =Colors.green;
       }
       else if (BMI >=85 && BMI <97) {
         status ='	Overweight';
         color=Colors.yellow;
         comment='You have an overweight body weight .\n'
             'The best way to lose weight is through a combination of diet and exercise. ';
       }
       else {
         status=  'Obesity';
         color=Colors.red;
         comment='You are obese .\n Over time you should work towards achieving a healthier weight.';
       }

     }

    return Scaffold(
        backgroundColor: Color(0xff1d2136),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Your Result",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 45,
                      color: Colors.white,
                      height: 2.5, )),


                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: MediaQuery.of(context).size.height-250,
                  decoration: BoxDecoration(
                    color:  Color(0xff323244),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Text("${status}",style: TextStyle(fontSize: 25,color: color,fontWeight: FontWeight.w500,),),
                      Text("${BMI.toStringAsFixed(1)}",style: TextStyle(fontSize: 80,color: Colors.white,fontWeight: FontWeight.w900),),
                      Text("${comment}",style: TextStyle(fontSize: 20,color: Colors.white,),textAlign: TextAlign.center,),

                    ],
                  ) ,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffe83d66),

                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))
                ),
                child:
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("RE-CALCULATE",
                    style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.w800,
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

