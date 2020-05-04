import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/buildDestination.dart';
import 'package:myapp/buildHotel.dart';

class HomeScreen extends StatefulWidget {
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int pageIndex=0;
IconData pressed;
  buildIcon(IconData icon) {
    return Container(
      height:60,
      width:60,
      decoration: BoxDecoration(shape: BoxShape.circle,color:pressed==icon?Theme.of(context).accentColor:Colors.grey[300] ),
      child:IconButton(icon:Icon(icon),
      color:pressed==icon?Theme.of(context).primaryColor:Colors.grey,
      onPressed:(){
        setState(() {
          pressed = icon;
        });
      } ,) ,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: ListView(
         padding: EdgeInsets.only(top: 30,left:10,right:10),
         children:<Widget>[
           Column(
             children: <Widget>[
          
               Padding(
                 padding: const EdgeInsets.only(right:100,top:25 ),
                 child: Text('What you would like to find?',
                 style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,),
               ),
               ),

               Padding(
                 padding: const EdgeInsets.only(top:15.0,left: 10,right:10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                   buildIcon(FontAwesomeIcons.plane),
                   buildIcon(FontAwesomeIcons.bed),
                   buildIcon(FontAwesomeIcons.walking),
                   buildIcon(FontAwesomeIcons.biking),
                 ],),
               ),

               buildDestination(context),
               buildHotel(context)
         ],
         )
         ],
       ),
        bottomNavigationBar: CupertinoTabBar(
          activeColor:Theme.of(context).primaryColor ,
          backgroundColor: Colors.white,
          currentIndex: pageIndex,
          onTap: (index){
            setState(() {
              pageIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(
              
              icon:Icon(
                Icons.search,
                
              ) ),
              BottomNavigationBarItem(
                
              icon:Icon(
                Icons.local_pizza,
                
              ) ),
              BottomNavigationBarItem(
              icon:Icon(
                Icons.account_circle,
                
              ) ),
          ]
        )
        
        
    );
  }
}