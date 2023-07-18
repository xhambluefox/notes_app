// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:notes_app/Const/ColorsConst.dart';
import 'package:notes_app/Views/Widgets/AddNoteBottomSheet.dart';

import 'package:notes_app/Views/Widgets/MansouryGridView.dart';
import 'package:notes_app/Views/Widgets/appBarWidgets.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({super.key});

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: AppBarWidgets(
          icon: Icons.search,
          ontTap: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: cardColor3,
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) => AddNoteBottomSheet());
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 25,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "My Notes",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.normal),
            ),
            Expanded(child: mansouryGridView()),
          ],
        ),
      ),
    );
  }
}
