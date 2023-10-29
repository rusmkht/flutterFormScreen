import 'package:flutter/material.dart';

class StepDivider extends StatelessWidget {
  const StepDivider({
    super.key,
    this.text = '',
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
