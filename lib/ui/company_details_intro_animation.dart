import 'package:flutter/material.dart';

class CompanyDetailsIntroAnimation{
  
  CompanyDetailsIntroAnimation(this.controller):
        bgDropOpacity=new Tween(begin: 0.5, end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.0, 0.5,curve: Curves.ease))),
        bgDropBlur=new Tween(begin: 0.0, end: 5.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.0,0.8,curve: Curves.ease))),
        avatarSize=new Tween(begin: 0.1,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.1, 0.4,curve: Curves.elasticInOut))),
        nameOpacity=new Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.35, 0.45,curve: Curves.easeIn))),
        locationOpacity =new Tween(begin: 0.0,end: 0.84).animate(CurvedAnimation(parent: controller, curve: Interval(0.5, 0.6,curve: Curves.easeIn))),
        dividerWidth=new Tween(begin: 0.1,end: 225.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.65, 0.75,curve: Curves.elasticInOut))),
         aboutOpacity=new Tween(begin: 0.1,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.65, 0.75,curve: Curves.easeIn))),
        courseScrollerXTranslation=new Tween(begin: 60.0,end: 0.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.83, 1.0,curve: Curves.ease))),
        courseScrollerOpacity=new Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.83, 1.0,curve: Curves.fastOutSlowIn)));


  
final AnimationController controller;
final Animation<double> bgDropOpacity;
final Animation<double> bgDropBlur;
final Animation<double> avatarSize;
final Animation<double> nameOpacity;
final Animation<double> locationOpacity;
final Animation<double> dividerWidth;
final Animation<double> aboutOpacity;
final Animation<double> courseScrollerXTranslation;
final Animation<double> courseScrollerOpacity;
}