// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final int maxLines;
  final String hint;
  const CustomTextField({super.key,required this.title, required this.maxLines, required this.hint});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {



  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.white, style: BorderStyle.solid));
    return TextField(
      maxLines: widget.maxLines,
      cursorColor: Colors.white,
      decoration: InputDecoration(
          label: Text(widget.title, textAlign: TextAlign.start,),
          hintText: widget.hint,
          hintStyle: TextStyle(
            color: Colors.white,


          ),

          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,

          border: outlineInputBorder),
    );
  }
}
