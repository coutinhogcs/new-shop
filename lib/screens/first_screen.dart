import 'package:flutter/material.dart';
import 'package:new_shop/view/components/logo.dart';

import 'login.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6f877),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 170),
            child: Logo(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 200, 0, 0),
            child: Text("O que é melhor do que fazer Compras?", style: TextStyle(fontSize: 25, fontFamily: "Poppins", fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: SizedBox(
              width: 300,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  ),

                ),
                child: Text(
                  "Começar a Gastar!",
                  style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
