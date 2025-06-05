import 'package:flutter/material.dart';

class ListScrow extends StatelessWidget{
  const ListScrow({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange,
                  ),
                  width: 100,
                  height: 125,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink,
                  ),
                  width: 100,
                  height: 125,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  width: 100,
                  height: 125,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  width: 100,
                  height: 125,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  width: 100,
                  height: 125,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  width: 100,
                  height: 125,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow,
                  ),
                  width: 100,
                  height: 125,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextHome extends StatelessWidget{
 final String text;
  const TextHome({
   super.key,
    required this.text,
 });
 @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
      child: Text(text, style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 30,
          fontFamily: "Poppins"),
      ),
    );
  }
}

class TitleHome extends StatelessWidget{
  final String title;
  final FontWeight fontWeight;
  const TitleHome({
    required this.title,
    required this.fontWeight,
    super.key
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 60, 0, 0),
      child: Text(
        title,
        style: TextStyle(fontSize: 40, fontWeight: fontWeight, fontFamily: "Poppins"),
      ),
    );
  }
}