import 'package:flutter/material.dart';

import 'home.dart';

/// Tela de login com botão que exibe alerta
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Image.asset('lib/images/Logo.png', width: 200, height: 200,),
            Text('Make Buy', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  width: 390,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff92ebcb),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Bem-vindo!",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            color: Colors.black87
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Senha",
                            border: OutlineInputBorder(),

                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 180,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                              },
                              style: ElevatedButton.styleFrom(
                               elevation: 5,
                                shape: ContinuousRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20))
                              ),
                              child: const Text(
                                "Entrar",
                                style: TextStyle(fontSize: 25, color: Colors.black),
                              ),
                            ),
                          ),
                        ),

                        const Center(
                          child: Text("Cadastre-se/Esqueceu a senha?"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            google(),
                            facebook(),
                            twitter()
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffe6f877),
    );
  }


  Widget google(){
    return SizedBox(
      child: Image.asset(
        'lib/images/google.png',
        height: 50,
        width: 50,
      ),
    );
  }

  Widget facebook(){
    return  SizedBox(
        child: Image.asset(
          'lib/images/facebook.png',
          height: 50,
          width: 50,

        ),
    );
  }

  Widget twitter(){
    return  SizedBox(
      child: Image.asset(
        'lib/images/twitter.png',
        height: 50,
        width: 50,
      ),
    );
  }


}