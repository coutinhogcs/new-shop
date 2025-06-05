import 'package:flutter/material.dart';

class SocialAuth extends StatelessWidget{
  const SocialAuth({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          child: Image.asset('lib/images/google.png', height: 50, width: 50),
        ),
        SizedBox(
          child: Image.asset('lib/images/facebook.png', height: 50, width: 50),
        ),
        SizedBox(
          child: Image.asset('lib/images/twitter.png', height: 50, width: 50),
        )
      ],
    );
  }
}