

import 'package:meta/meta.dart';

class Company{
  String name;
  String location;
  String logo;
  String backdropPhoto;
  String about;
  List<Course> courses;

  Company(
      @required this.name,
      @required this.location,
      @required this.logo,
      @required this.backdropPhoto,
      @required this.about,
      @required this.courses);

}

class Course {
  Course(@required this.title,
         @required this.thumbnail,
         @required this.url);
  String title;
  String thumbnail;
  String url;
}