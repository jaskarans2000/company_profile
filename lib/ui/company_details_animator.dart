import 'package:company_profile/repo/repo.dart';
import 'package:flutter/material.dart';

import 'company_details_page.dart';

class CompanyDetailsAnimator extends StatefulWidget {
  @override
  _CompanyDetailsAnimatorState createState() => _CompanyDetailsAnimatorState();
}

class _CompanyDetailsAnimatorState extends State<CompanyDetailsAnimator> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        duration: Duration(milliseconds: 1780),
        vsync: this);
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompanyDetailsPage( company:RepoData.bawp,controller: _controller);
  }
}
