import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_app/constants/app_color.dart';
import 'package:form_app/constants/app_styles.dart';
import 'package:form_app/common/common_place_holder.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    required this.title,
    required this.body,
    this.onTap,
  });

  final String title;
  final String body;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: AppColor.black1,
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.text4.copyWith(color: AppColor.white),
                ),
                const HBox(8),
                Text(
                  body,
                  style: AppStyles.text5.copyWith(color: AppColor.gray5),
                )
              ],
            ),
            SvgPicture.asset('assets/icons/edit_icon.svg')
          ],
        ),
      ),
    );
  }
}
