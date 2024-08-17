import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../authentigation_screen/register_screen.dart';
import '../utilise/assets_data.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});



  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
            return RegisterScreen();
          }), (Route<dynamic> route) {
        return false;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(WelcomeLogo),
      ),




    );
  }
}

