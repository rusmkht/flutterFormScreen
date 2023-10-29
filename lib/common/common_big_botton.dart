import 'package:flutter/material.dart';
import 'package:form_app/constants/app_color.dart';
import 'package:form_app/constants/app_styles.dart';

class CommonBigButton extends StatelessWidget {
  const CommonBigButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 335,
      decoration: BoxDecoration(
        color: AppColor.orange,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          text,
          style: AppStyles.text3.copyWith(
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
