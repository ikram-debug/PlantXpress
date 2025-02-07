import 'package:flutter/material.dart';

class Splash_Screen_VM {
  void NavigateToNextScreen(BuildContext context, Widget nextscreen) {
    Future.delayed(
      const Duration(seconds: 3),
        () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => nextscreen
        )
        );
        },
    );
  }
}