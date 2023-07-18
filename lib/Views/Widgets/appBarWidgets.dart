import 'package:flutter/material.dart';

class AppBarWidgets extends StatelessWidget {
  final IconData icon;
  final VoidCallback ontTap;
  const AppBarWidgets({super.key, required this.icon, required this.ontTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            child: ClipRRect(
              child: Image.asset("assets/user.jpeg"),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20)),
            child: IconButton(
                onPressed: ontTap,
                icon: Icon(
                  icon,
                  color: Colors.white,
                  size: 25,
                )),
          )
        ],
      ),
    );
  }
}
