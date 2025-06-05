import 'package:flutter/material.dart';
import 'package:new_shop/view/components/scrow-itens.dart';

import '../view/components/input_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6f877),
      appBar: AppBar(title: Text('Home'),),
      body:  SingleChildScrollView(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleHome(title: 'Procurar', fontWeight: FontWeight.w500),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: InputText(suffixIcon: Icon(Icons.search), visibility: true, hintText: 'pesquisar', obscureText: false)
              ),
              TextHome(text: 'Novos'),
              ListScrow(),
              TextHome(text: 'Usados'),
              ListScrow(),
            ]
          ),
        ),
      ),
    );
  }
}
