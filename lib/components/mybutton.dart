import 'package:flutter/material.dart';

class Mycustombutton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const Mycustombutton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(28)),
        child: child,
      ),
    );
  }
}
