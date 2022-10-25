import 'package:flutter/material.dart';

class RoundedButtonGenerator extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final double margin;

  const RoundedButtonGenerator(
      {super.key,
      required this.onPressed,
      required this.text,
      this.margin = 5});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(margin),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(text),
        ),
      ),
    );
  }
}
