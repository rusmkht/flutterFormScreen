import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_app/constants/app_color.dart';
import 'package:form_app/constants/app_styles.dart';

import 'package:form_app/screens/widgets/address_card.dart';
import 'package:form_app/common/common_place_holder.dart';
import 'package:form_app/common/common_text_field_widget.dart';
import 'package:form_app/common/common_widget_wrapper.dart';
import 'package:form_app/screens/widgets/tab_button.dart';

class DetailsWidget extends StatefulWidget {
  DetailsWidget({
    super.key,
    required this.title,
    this.controllers,
    this.adressControllers,
    this.searchController,
  });

  final String title;
  List<TextEditingController>? controllers;
  List<TextEditingController>? adressControllers;
  TextEditingController? searchController;

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  late int activeButton;

  @override
  void initState() {
    activeButton = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonWidgetWrapper(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: AppStyles.header3,
          ),
          const HBox(16),
          Row(
            children: [
              TabButton(
                  text: 'Add address',
                  onTap: () {
                    if (activeButton != 1) {
                      setState(() {
                        activeButton = 1;
                      });
                    }
                  },
                  buttonColor:
                      activeButton == 1 ? AppColor.orange : AppColor.gray5,
                  textColor:
                      activeButton == 1 ? AppColor.white : AppColor.gray2),
              const WBox(7),
              TabButton(
                  text: 'Select address',
                  onTap: () {
                    if (activeButton != 2) {
                      setState(() {
                        activeButton = 2;
                      });
                    }
                  },
                  buttonColor:
                      activeButton == 1 ? AppColor.gray5 : AppColor.orange,
                  textColor:
                      activeButton == 2 ? AppColor.white : AppColor.gray2),
            ],
          ),
          const HBox(20),
          ...buildActiveTree(),
        ],
      ),
    );
  }

  List<Widget> buildActiveTree() {
    if (activeButton == 1) {
      return firstState();
    } else {
      return secondState();
    }
  }

  List<Widget> firstState() {
    return [
      CommonTextFieldWidget(
        title: 'Full name*',
        iconPath: 'assets/icons/person_icon.svg',
        hintText: 'Danilev Egor',
        textEditingController: widget.controllers?[0],
      ),
      const HBox(12),
      CommonTextFieldWidget(
        title: 'Email*',
        iconPath: 'assets/icons/email_icon.svg',
        hintText: 'egor_zu@email.com',
        textEditingController: widget.controllers?[1],
      ),
      const HBox(12),
      CommonTextFieldWidget(
        title: 'Phone number*',
        iconPath: 'assets/icons/phone_icon.svg',
        hintText: '+375726014690',
        textEditingController: widget.controllers?[2],
      ),
      const HBox(12),
      const Divider(),
      const HBox(10),
      CommonTextFieldWidget(
        title: 'Country*',
        iconPath: 'assets/icons/location_icon.svg',
        hintText: 'Belarus',
        textEditingController: widget.controllers?[3],
      ),
      const HBox(12),
      CommonTextFieldWidget(
        title: 'City*',
        iconPath: 'assets/icons/city_icon.svg',
        hintText: 'Minsk',
        textEditingController: widget.controllers?[4],
      ),
      const HBox(12),
      CommonTextFieldWidget(
        title: 'Address Line 1*',
        iconPath: 'assets/icons/address_icon.svg',
        hintText: 'Derzhinskogo 3b',
        textEditingController: widget.adressControllers?[0],
      ),
      const HBox(12),
      Text(
        'Add address line+',
        style: AppStyles.header3.copyWith(color: AppColor.orange),
      ),
      const HBox(12),
      CommonTextFieldWidget(
        title: 'Postcode*',
        iconPath: 'assets/icons/post_icon.svg',
        hintText: '220069',
        textEditingController: widget.controllers?[5],
      ),
      const HBox(12),
    ];
  }

  List<Widget> secondState() {
    return [
      SizedBox(
        height: 37,
        child: TextFormField(
          style: AppStyles.text5,
          decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset('assets/icons/search_icon.svg'),
              )),
          controller: widget.searchController,
        ),
      ),
      const HBox(12),
      const AddressCard(
        title: 'Denilev Egor',
        body: 'Belarus, Minsk, Derzhinskogo 3b, 80100',
      )
    ];
  }
}
