import 'package:flutter/material.dart';
import 'package:plant_delivery_app/Utils/color.dart';
import 'package:plant_delivery_app/View%20Model/Splash_Screen_VM.dart';
import 'package:plant_delivery_app/View/Home_screen/Home_Screen_View.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Splash_Screen_VM _ViewModel = Splash_Screen_VM();
  @override
  void initState() {
    super.initState();
    _ViewModel.NavigateToNextScreen(context, HomeScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              child: Image.asset("assets/flower 2.png"),
            ),
            SizedBox(height: 10),
            Text(
              'PlantXpres',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
