import 'package:flutter/material.dart';

import 'constant.dart';

void main() {
  runApp(MyApp());
}

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: SafeArea(
         child: Scaffold(
           appBar: AppBar(
             elevation: 0.0,
             backgroundColor: primaryColor,
             centerTitle: true,
             title: Text('Weather Forecast', ),
           ),
           body: Scaffold(
             body: _mainPage(),
             backgroundColor: primaryColor,
           ),
           ),
         ),
     );
   }
 }

 class _mainPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Container(
       margin: EdgeInsets.only(left: 20, right: 20) ,
       child: Column(
         children: [
           TextField(
             style: TextStyle(color: Colors.white),
             decoration: InputDecoration(
               prefixIcon: Icon(Icons.search, color: Colors.white, size: 16,),
               border: InputBorder.none,
               hintText: 'Enter City Name',
               hintStyle: TextStyle(fontSize: 14.0, color: Colors.white),
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 10.0, bottom: 0.0, left: 0.0),
             padding: EdgeInsets.all(0),
             child: Text('Murmansk Oblast, RU', style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Open_Sans'),
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 10.0, bottom: 30.0, left: 0.0),
             padding: EdgeInsets.all(0),
             child: Text('Friday, Mar 20,2020', style: TextStyle(fontSize: 14, color: Colors.white70, fontWeight: FontWeight.w100, ),
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 0.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.wb_sunny, color: Colors.white, size: 60, ),
                  SizedBox(width: 10,),
                 Column(

                   children: [
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('14 ', style: TextStyle(fontSize: 45, color: Colors.white, fontFamily: 'Open_Sans', fontWeight: FontWeight.w100, ), ),
                         Text('0', style: TextStyle(fontSize: 10, color: Colors.white, fontFamily: 'Open_Sans', fontWeight: FontWeight.w100,), ),
                         Text('F', style: TextStyle(fontSize: 45, color: Colors.white, fontFamily: 'Open_Sans', fontWeight: FontWeight.w100,), ),
                       ],
                     ),
                     Text('LIGHT SNOW', style: TextStyle(fontSize: 16, color: Colors.white70),),
                   ],
                 )
               ],
             ),

           ),
           Container(
             margin: EdgeInsets.only(left: 30, right: 30, top: 50),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Column(
                   children: [
                     Icon(Icons.ac_unit, color: Colors.white, size: 30,),
                     Text('5', style: TextStyle(color: Colors.white70, fontSize: 20),),
                     Text('km/hr', style: TextStyle(color: Colors.white,  fontSize: 10),)
                   ],
                 ),
                 Column(
                   children: [
                     Icon(Icons.ac_unit, color: Colors.white, size: 30,),
                     Text('3', style: TextStyle(color: Colors.white70, fontSize: 20),),
                     Text('km/hr', style: TextStyle(color: Colors.white,  fontSize: 10),)
                   ],
                 ),
                 Column(
                   children: [
                     Icon(Icons.ac_unit, color: Colors.white, size: 30,),
                     Text('20', style: TextStyle(color: Colors.white70, fontSize: 20),),
                     Text('%', style: TextStyle(color: Colors.white,  fontSize: 10),)
                   ],
                 )
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 30),
             child: Text('7-DAY WEATHER FORECAST' , style: TextStyle(color: Colors.white70),),
           ),


         ],
       ),
     );
   }
 }







