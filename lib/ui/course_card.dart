import 'package:company_profile/model/company.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseCard extends StatelessWidget {
  CourseCard(this.course);
  final Course course;
  BoxDecoration _createShadowRoundCorners() {
    return BoxDecoration(
   color: Colors.white.withOpacity(0.4),
    borderRadius: BorderRadius.circular(12.0),
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black26,
        spreadRadius: 2.0,
        blurRadius: 10.0
      )
    ]);
  }
  Widget _createThumbnail(){
    return new ClipRRect(
      borderRadius:new BorderRadius.circular(8.0),
      child: Stack(
        children: <Widget>[
          Image.asset(course.thumbnail),
          Positioned(child: _createLinkedButton(),bottom: 12.0,right: 12.0,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 16.0),
      decoration: _createShadowRoundCorners(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 3,child: _createThumbnail(),),
          Flexible(flex: 2,child: _createCourseInfo())
        ],
      ),
    );
  }

 Widget _createLinkedButton() {
    return Material(
      color: Colors.white24,
      type: MaterialType.circle,
      child: IconButton(
          icon:Icon(Icons.link),
          onPressed: () async{
            if(await canLaunch(course.url)){
              await launch(course.url);
            }
          }),
    );
 }

  Widget _createCourseInfo() {
    return Padding(padding: const EdgeInsets.only(top: 16.0,left: 4.0,right: 4.0),
    child: Text(course.title,
    style: TextStyle(
      color: Colors.white.withOpacity(0.85)
    ),),);
  }
}
