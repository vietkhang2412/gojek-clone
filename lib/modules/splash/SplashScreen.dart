import 'package:flutter/material.dart';
import 'package:gojek_clone/core/values/images.dart';
import 'package:gojek_clone/modules/home/HomeScreen.dart';
import 'package:gojek_clone/core/values/dimens.dart';
import 'package:gojek_clone/modules/login/BeforeLogin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigationHome();
  }

  _navigationHome() async {
    await Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BeforeLogin())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImage.logo,
          width: AppDimens.SIZE_200,
          height: AppDimens.SIZE_200,
        ),
      ),
    );
  }
}
