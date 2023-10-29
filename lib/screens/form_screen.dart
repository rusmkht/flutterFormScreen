import 'package:flutter/material.dart';
import 'package:form_app/common/common_big_botton.dart';
import 'package:form_app/common/common_place_holder.dart';
import 'package:form_app/constants/app_color.dart';
import 'package:form_app/constants/app_icon.dart';
import 'package:form_app/constants/app_styles.dart';
import 'package:form_app/constants/app_text.dart';
import 'package:form_app/common/common_app_bar.dart';
import 'package:form_app/common/common_widget_wrapper.dart';
import 'package:form_app/screens/widgets/date_picker_widget.dart';
import 'package:form_app/screens/widgets/details_widget.dart';
import 'package:form_app/screens/widgets/step_divider.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: AppText.ordering,
        leadingIconPath: AppIcon.arrow_back,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const StepDivider(text: 'Step 1'),
            const CommonWidgetWrapper(
              child: DatePickerWidget(
                title: 'Start date',
                assetPath: 'assets/icons/calendar_icon.svg',
                date: 'Sep 12, 2023',
              ),
            ),
            const HBox(16),
            DetailsWidget(
              title: 'Sender details',
            ),
            const HBox(16),
            DetailsWidget(
              title: 'Recipient address',
            ),
            const HBox(16),
            const CommonBigButton(
              text: 'Next Step',
            ),
            const HBox(16),
          ],
        ),
      ),
    );
  }
}
