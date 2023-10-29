import 'package:flutter/material.dart';
import 'package:form_app/constants/app_styles.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.buttonColor,
    required this.textColor,
  });

  final Color textColor;
  final Color buttonColor;
  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 33,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(36)),
          child: Center(
              child: Text(
            text,
            style: AppStyles.text5.copyWith(color: textColor),
          )),
        ),
      ),
    );
  }
}
