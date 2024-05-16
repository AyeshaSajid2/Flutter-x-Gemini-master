import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isFirstAnimationCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return Stack(
      children: [
        Center(
          child: Lottie.asset(
              _isFirstAnimationCompleted
                  ? 'assets/lottie/load.json'
                  : 'assets/lottie/birds-clapping.json',
              repeat: true,
              width: 250,
              height: 250,
              onLoaded: (composition) {
                if (!_isFirstAnimationCompleted) {
                  setState(() {
                    _isFirstAnimationCompleted = true;
                  });
                }
              }),
        ),
        if (_isFirstAnimationCompleted)
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {

                },
              ),
            ),
          ),
      ],
    );
  }
}
