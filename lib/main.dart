import 'package:car_trader/views/home_view.dart';
import 'package:car_trader/views/login.dart';
import 'package:car_trader/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AutoTrader());
}

class AutoTrader extends StatelessWidget {
  const AutoTrader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(routes: {
        HomeView.id: (context) => HomeView(),
        LoginScreen.id: (context) => LoginScreen(),
      }, debugShowCheckedModeBanner: false, home: const SplashView()),
    );
  }
}
