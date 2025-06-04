
import 'package:flutter/material.dart';

import 'login.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xffe6f877),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Image.asset('lib/images/Logo.png', width: 250, height: 250,),
            const Text("Make Buy", style: TextStyle(fontSize: 50, color: Colors.black, fontWeight: FontWeight.bold)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("O que é melhor", style: TextStyle(fontSize: 20)),
                const Text("do que Fazer", style: TextStyle(fontSize: 20),),
                const Text("Compras?", style: TextStyle(fontSize: 20)),
              ],
            ),

            SizedBox(
              width: 300,
              height: 70,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage()
                        )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20)
                  )
                  ),
                  child: Text("Começar a Gastar!", style: TextStyle(fontSize: 30, color: Colors.black))),
            )
          ],
        ),
      ),
    );
  }
}