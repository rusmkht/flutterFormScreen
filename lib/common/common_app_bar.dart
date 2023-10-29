import 'package:flutter/material.dart';
import 'package:form_app/constants/app_color.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.title,
    this.onTapLead,
    this.leadingIconPath,
    this.borderColor = AppColor.gray3,
  });

  final Function()? onTapLead;
  final String? leadingIconPath;
  final String? title;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ''),
      centerTitle: true,
      leading: _buildLeading(),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor,
        ),
      ),
    );
  }

  InkWell _buildLeading() {
    return InkWell(
      onTap: onTapLead,
      child: leadingIconPath != null
          ? Image.asset(leadingIconPath!)
          : const SizedBox(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
