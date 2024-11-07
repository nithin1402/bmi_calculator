import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(),
       body:Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             child: Center(
               child: Container(
                 height: 350,
                 width: 350,
                child: Image.asset("assets/images/bmi_img.png"),
                 ),
             ),
           ),
           SizedBox(height: 20,),
           Text("Healthy",style: TextStyle(fontSize: 40,color: Color(0xff0fa6a6)),),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Column(
                 children: [
                   Text("Male",style: TextStyle(fontSize: 22),),
                   Icon(Icons.male,size: 80,)
                 ],
               ),
               Column(
                 children: [
                   Text("Female",style: TextStyle(fontSize: 22),),
                   Icon(Icons.female,size: 80,)
                 ],
               )
             ],
           ),
           SizedBox(height: 20,),
           Container(
             margin: EdgeInsets.all(15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Column(
                   children: [
                     Text("Age",style: TextStyle(fontSize: 22),),
                     Text("22",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
                   ],
                 ),
                Container(
                  height: 80,
                  width: 1,
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                ),
                 Column(
                   children: [
                     Text("Height",style: TextStyle(fontSize: 22),),
                     Text("175",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
                   ],
                 ),
                 Container(
                   height: 80,
                   width: 1,
                   decoration: BoxDecoration(
                       color: Colors.black
                   ),
                 ),
                 Column(
                   children: [
                     Text("Weight",style: TextStyle(fontSize: 22),),
                     Text("75",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
                   ],
                 )
               ],
             ),
           ),
           SizedBox(height: 20,),
           Container(
             height: 75,
             width: double.infinity,
             decoration: BoxDecoration(
               color: Color(0xff6aeaea)
             ),
             child: Center(child: Text("Calculate BMI",style: TextStyle(fontSize: 30,color: Colors.white),)),
           )
         ],
       ) ,
     ),
   );
  }
}