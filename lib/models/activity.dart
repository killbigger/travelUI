import 'package:flutter/material.dart';
import 'package:myapp/models/destination_model.dart';



class Activity {
      String imageUrl;
      String name;
      String type;
List<String> startTimes;
        int rating;
        int price;

  Activity({
      this.imageUrl,
      this.name,
      this.type,
this.startTimes,
  this.rating,
  this.price,
  });
}

class ActivityPage extends StatefulWidget {
 final  Destination destination;
  ActivityPage(
    this.destination
  );

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
 Text starBuilder(int rating){
    String star ='';
    for(int i=0;i < rating;++i){
      star+='⭐' ;
    }
    return Text(star,style: TextStyle(fontSize: 10),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
        Stack(
            children: <Widget>[
              Container(
                  height: 350,
                  child:Hero(
                     tag : widget.destination.imageUrl,
                     child:  ClipRRect(
                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(20),bottomLeft:Radius.circular(25)),
                    child:Image(
                      image: AssetImage(widget.destination.imageUrl),
                      fit : BoxFit.cover,
                    ) ,
                    
                    )
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    iconSize: 32,
                    onPressed: ()=>print('pressed'),
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  Row(children: <Widget>[
                     IconButton(
                       iconSize: 32,
                        onPressed: ()=>print('pressed'),
                    icon: Icon(Icons.search),
                    color: Colors.white,
                  ),
                   IconButton(
                     iconSize: 32,
                      onPressed: ()=>print('pressed'),
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  ),
                  ],)
                ],
              ),
              Positioned(
                bottom: 35,
                left: 20,
                child: Text(widget.destination.country,style: TextStyle(color: Colors.white,
                fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 1
                ),)),
              Positioned(
                bottom: 15,
                left: 30,
                child: Text(widget.destination.city,style: TextStyle(color: Colors.white,
                fontSize: 18,fontWeight: FontWeight.bold,
                ),))
            ],
            ),
        
         Expanded(
            child: ListView.builder(
              itemCount: widget.destination.activities.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 20,right:20),
                  child: Container(

                    height: 200,
                    
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                             child: Container(
                               decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
                               color: Colors.white
                                ),
                            height: 200,
                            width:320,
                            
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 0,
                             child: Container(
                               decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
                               
                                ),
                            height: 180,
                            width:150,
                            child: ClipRRect(
                                  borderRadius:BorderRadius.circular(20) ,
                                  child: Image(
                                image: AssetImage(widget.destination.activities[index].imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 150,
                             child: Container(
                            width: 220,
                            height: 200,
                            
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              Row(
                                
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:<Widget> [
                                Padding(
                                  padding: const EdgeInsets.only(top:35.0,left: 10),
                                  child: 
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: 150,
                                        child:Text(widget.destination.activities[index].name,
                                    style: TextStyle(
                                      fontSize: 25,
                                      
                                    ),), 
                                      ),
                                    SizedBox(height:5 ,),
                                    Text(widget.destination.activities[index].type,
                                    style: TextStyle(
                                      fontSize:20 ,
                                      
                                    ),)
                                  ],),
                                ),
                                
                             
                                  Padding(
                                    padding: const EdgeInsets.only(right:1,top:30),
                                    child: Column(children: <Widget>[

                                     Text('\$${widget.destination.activities[index].price.toString()}',
                                     style: TextStyle(
                                      fontSize: 25,
                                      
                                    ),),
                                     Text('per pax',style: TextStyle(
                                      fontSize: 10,
                                      
                                    ),)
                                 ],),
                                  ),
                               
                               
                                
                                ]
                                ),
                                
                            SizedBox(height:10 ,),
                          Padding(
                            padding: const EdgeInsets.only(left:14.0),
                            child: starBuilder(widget.destination.activities[index].rating),
                          ),
                            
                                SizedBox(height:20 ,),  
                              Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: Row(children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal:5,vertical:5),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(widget.destination.activities[index].startTimes[0]),
                                  ),
                                  SizedBox(width:10 ,),
                                   Container(
                                     
                                      padding: EdgeInsets.symmetric(horizontal:5,vertical:5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      color:  Theme.of(context).primaryColor,
                                    ),
                                    child: Text(widget.destination.activities[index].startTimes[1]),
                                  ),
                                ],),
                              )
                                
                            ],),
                          ),
                        )
                        
                    ],),
                  ),
                );
              }),
         ),
        
      ],)
     
      
    );
  }
}