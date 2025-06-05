import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final Icon suffixIcon;
  final bool visibility;
  final String hintText;
  final bool obscureText;
  const InputText({
    super.key,
    required this.suffixIcon,
    required this.visibility,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: visibility,
      style: TextStyle(fontSize: 16, color: Colors.black),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Color(0xff92ebcb), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Color(0xff92ebcb), width: 2),
        ),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: suffixIcon,
        suffixIconColor:Color(0xa592ebcb),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black38, fontFamily: "Poppins"),

      ),
      obscureText: obscureText,
    );
  }
}
