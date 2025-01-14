import 'package:flutter/material.dart';
import 'package:flutter_application_4/helpers/appcolors.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({this.goToPage, this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
        body: Container(
            color: AppColors.MAIN_COLOR,
            child: Center(
              child: Icon(Icons.favorite, color: Colors.white, size: 100),
            )));
  }
}
