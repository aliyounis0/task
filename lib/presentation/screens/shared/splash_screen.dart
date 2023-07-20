import 'dart:async';

import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/login_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Timer? _timer;

  _startTimer(){
    Timer(const Duration(seconds: 5),_goNext);
  }
  _goNext(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginScreen()));
    //Navigator.of(context).pushNamed("/login");
  }
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.white,
      body:Center(child: Image(
        image: AssetImage('assets/images/splash.png'),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      )),
    );
  }


  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
