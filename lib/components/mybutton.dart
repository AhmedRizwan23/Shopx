import 'package:flutter/material.dart';

class Mycustombutton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  Color? color = Colors.white;
  Mycustombutton(
      {super.key, required this.onTap, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(28)),
        child: child,
      ),
    );
  }
}
