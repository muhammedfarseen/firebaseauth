import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class AppTextfield extends StatelessWidget {
  const AppTextfield({
    super.key,
    this.labelname,
    required this.hinttext,
    this.prefxicon,
    required this.controller,
    this.prefixname,
    this.mandatoryicon,
    this.suffixicon,
    this.validator,
    this.keyboardtype,
    this.errortext,
    this.maxlength,
    this.onchanged,
  });
  final String? labelname;
  final String hinttext;
  final Widget? prefxicon;
  final Widget? suffixicon;
  final TextEditingController controller;
  final String? prefixname;
  final bool? mandatoryicon;
  final FormFieldValidator? validator;
  final TextInputType? keyboardtype;
  final String? errortext;
  final int? maxlength;
  final Function? onchanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelname != null && labelname!.isNotEmpty)
          RichText(
              text: TextSpan(text: labelname, style: SubHeading2, children: [
            mandatoryicon == true
                ? TextSpan(text: " *", style: TextStyle(color: Colors.red))
                : TextSpan()
          ])),
        SizedBox(
          height: 10,
        ),
        Container(
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            style: const TextStyle(color: Colors.black),
            onChanged: (value) {
              onchanged;
            },
            keyboardType: keyboardtype,
            validator: validator,
            maxLength: maxlength,
            decoration: InputDecoration(
              counter: Offstage(),
              errorText: errortext,
              hintText: hinttext,
              hintStyle: TextStyle(color: ColourResources.greywhite),
              prefixIcon: prefxicon,
              suffixIcon: suffixicon,
              filled: true,
              fillColor: ColourResources.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      ],
    );
  }
}
