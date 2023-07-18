// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final int maxLines;
  final String hint;
  const CustomTextField({super.key,required this.title, required this.maxLines, required this.hint, this.onChanged});

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.white, style: BorderStyle.solid));
    return TextFormField(
      onChanged: onChanged,
      validator: (value){
        if(value?.isEmpty ?? true){
          return "Field is required";

        }else{
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: Colors.white,
      decoration: InputDecoration(
          label: Text(title, textAlign: TextAlign.start,),
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white,


          ),

          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,

          border: outlineInputBorder),
    );
  }
}
