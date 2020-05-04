import 'package:myapp/models/activity.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
  this.imageUrl,
  this.city,
  this.country,
  this.description,
  this.activities
  });
}
 List<Activity> activities = [
   Activity(
     imageUrl:'assets/images/activity.jpg',
     name:'Bolgatvh kdhv',
      type:'Nature',
      startTimes:['9:00 am','11:00 am'],
      rating:5,
      price:50
   ),
      Activity(
     imageUrl:'assets/images/activity.jpg',
     name:'Bolgatty2',
      type:'Nature',
      startTimes:['9:00 am','11:00 am'],
      rating:5,
      price:75
   ),
      Activity(
     imageUrl:'assets/images/activity.jpg',
     name:'Bolgatty3',
      type:'Nature',
      startTimes:['9:00 am','11:00 am'],
      rating:5,
      price:100
   )
 ];

  List<Destination> destinations = [
    Destination(
    country:'India',
    city: 'Kochi',
    description: 'hdgfkhsdgfshfsb',
    imageUrl: 'assets/images/kochi.jpg',
    activities: activities,
    ),
    Destination(
    country:'India',
    city: 'Kochi2',
    description: 'hdgfkhsdgfshfsb',
    imageUrl: 'assets/images/hotel1.jpg',
    activities: activities
    ),
    Destination(
    country:'India',
    city: 'Kochi3',
    description: 'hdgfkhsdgfshfsb',
    imageUrl: 'assets/images/hotel2.jpg',
    activities: activities
    ),
    Destination(
    country:'India',
    city: 'Kochi4',
    description: 'hdgfkhsdgfshfsb',
    imageUrl: 'assets/images/hotel3.jpg',
    activities: activities
    )
  ];
