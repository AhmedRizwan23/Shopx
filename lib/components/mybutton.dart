import 'package:flutter/material.dart';

class Mycustombutton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  Color? color = Colors.white;
  double? width;
  Mycustombutton(
      {super.key,
      required this.onTap,
      required this.child,
      this.color,
      this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(28)),
        child: child,
      ),
    );
  }
}
