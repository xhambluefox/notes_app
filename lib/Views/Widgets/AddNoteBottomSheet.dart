// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/CustomTextField.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:  [
          SizedBox(height: 34,),
          CustomTextField(title: "Title" , maxLines: 1, hint: 'title',),
          SizedBox(height: 20,),
          CustomTextField(title: "Content", maxLines: 5, hint: "content")
        ],
      ),

    );
  }
}
