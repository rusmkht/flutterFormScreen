import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_app/constants/app_color.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    super.key,
    required this.title,
    required this.assetPath,
    required this.date,
    this.onTap,
  });

  final String title;
  final String assetPath;
  final String date;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 44,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.gray3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                SvgPicture.asset(assetPath),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  date,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
