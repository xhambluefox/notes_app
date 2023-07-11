import 'package:flutter/material.dart';

import '../../Const/ColorsConst.dart';

class CustumerButton extends StatelessWidget {
  final String textname;

  CustumerButton({super.key, required this.textname});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: cardColor1,
            disabledBackgroundColor: cardyellewColor.withOpacity(0.3),
            elevation: 6,
            padding: EdgeInsets.all(10),
          ),
          onPressed: () {},
          child: Text(
            textname,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
