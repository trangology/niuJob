import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("niuJob Splash Screen",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3),
        ),
      ),
    );
  }
}
