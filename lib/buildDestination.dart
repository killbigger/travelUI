import 'package:flutter/material.dart';
import 'package:myapp/models/destination_model.dart';

buildDestination( BuildContext context){
  return Column(
      children:<Widget>[
        Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
          Text('Top Destinations',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            letterSpacing: 1
          ),),

          FlatButton(
            child: Text('See all',style:TextStyle(color:Theme.of(context).primaryColor )),
            onPressed: ()=>print('See all'),
          )
      ]
      
    ),
        ),

  Container(
    height: 320,
    
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount:destinations.length,
      itemBuilder: (BuildContext context,int index){
        Destination destination = destinations[index];
       
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Stack(
                children: <Widget>[
                  
                  Container(
                    height: 320,
                    width: 220,
                   ),
                    Positioned(
                         bottom: 0,
                         child: Container(
                           
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(20),
                            
                           ),
                       
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 55,left: 10),
                                child: Text('${destination.activities.length} Activities',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.only(left:10,right:4),
                                child: Text(destination.description,style: TextStyle(
                                  fontSize: 15
                                ),),
                              ) 
                              ]
                              ),
                              // ),   
                        height:150,
                        width: 220,
                        
                      ),
                    ),

                    Positioned(
                      left: 10,
                      child: Container(
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(image: AssetImage(destination.imageUrl),
                            fit: BoxFit.cover,
                            ),
                          ),
                      width:200,
                      height: 200,

                      ),
                    ),

                Positioned(
                  top:150,
                  left:20,
                  child: Text(destination.country,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                  fontSize: 20,letterSpacing: 1
                  ),)),
                  Positioned(
                  top:175,
                  left:24,
                  child: Text(destination.city,style: TextStyle(color: Colors.white,
                  fontSize: 15,letterSpacing: 1
                  ),))
                   
                ],
              ),
          );
          
      },
  )
  )
      ]
  
  );
}