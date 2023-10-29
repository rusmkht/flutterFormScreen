import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_app/constants/app_styles.dart';
import 'package:form_app/common/common_place_holder.dart';

class CommonTextFieldWidget extends StatelessWidget {
  const CommonTextFieldWidget(
      {super.key,
      required this.title,
      this.textEditingController,
      this.validate,
      required this.iconPath,
      this.hintText = ''});

  final String title;
  final String hintText;
  final TextEditingController? textEditingController;
  final String? Function(String? value)? validate;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.header4,
        ),
        HBox(8),
        Container(
          height: 47,
          child: TextFormField(
            controller: textEditingController,
            validator: validate,
            style: AppStyles.text5,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(iconPath),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
