import 'package:car_trader/views/login.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamed(context, LoginScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Auto Trader',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 32, fontFamily: 'Schyler'),
        ),
      ),
    );
  }
}
