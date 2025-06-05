import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget{
  const Logo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            width: 190,
            height: 190,
            child: Image.asset('lib/images/Logo.png'),
          ),
          Text(
            'Make Buy',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, fontFamily: "Poppins"),
          ),

        ],
      ),
    );
  }

}