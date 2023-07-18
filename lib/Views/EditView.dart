// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/appBarWidgets.dart';

import 'Widgets/CustomTextField.dart';

class EditView extends StatefulWidget {
  const EditView({super.key});

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: AppBarWidgets(
          icon: Icons.check,
          ontTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Column(
          children: [
            SizedBox(
              height: 34,
            ),
            CustomTextField(title: "title", maxLines: 1, hint: "edit title"),
            SizedBox(
              height: 15,
            ),
            CustomTextField(title: "Content", maxLines: 5, hint: "Content")
          ],
        ),
      ),
    );
  }
}
