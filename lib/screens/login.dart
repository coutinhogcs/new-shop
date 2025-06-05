import 'package:flutter/material.dart';
import 'package:new_shop/screens/home.dart';
import 'package:new_shop/view/components/input_text.dart';
import 'package:new_shop/view/components/logo.dart';
import 'package:new_shop/view/components/social_auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email:", style: TextStyle(fontSize: 15, color: Colors.black54,  fontFamily: "Poppins")),
                    InputText(suffixIcon: Icon(Icons.email), visibility: false, hintText: "Escreva seu email", obscureText: false,),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Senha:", style: TextStyle(fontSize: 15, color: Colors.black54, fontFamily: "Poppins")),
                    InputText(suffixIcon: Icon(Icons.lock), visibility: true, hintText: "Escreva sua senha", obscureText: true,),
                  ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: const Text("Esqueceu a senha?", style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.w500, fontFamily: "Poppins")),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                        color: Color(0xff92ebcb),
                        thickness: 3,
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text("ou", style: TextStyle(fontSize: 15, color: Color(0xff92ebcb), fontWeight: FontWeight.w600, fontFamily: "Poppins")),
                  ),
                  Expanded(
                      child: Divider(
                        color: Color(0xff92ebcb),
                        thickness: 3,
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: SocialAuth(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      shape: ContinuousRectangleBorder(borderRadius: BorderRadiusGeometry.circular(35))
                    ),
                    child: Text('Entrar', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w400, fontFamily: "Poppins",),)
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xffe6f877),
    );
  }

}
