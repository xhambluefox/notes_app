// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:notes_app/Views/Widgets/CardWidgets.dart';
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
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: AppBarWidgets(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
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

Widget mansouryGridView(){
  return MasonryGridView.builder(
    scrollDirection: Axis.vertical,
    physics: BouncingScrollPhysics(),
    itemCount: 10,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index){

    return CardWidgets();
      });
}
