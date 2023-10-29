import 'package:flutter/material.dart';
import 'package:form_app/constants/app_color.dart';

class CommonWidgetWrapper extends StatelessWidget {
  const CommonWidgetWrapper({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: const BoxDecoration(
        color: AppColor.white,
      ),
      child: child,
    );
  }
}
