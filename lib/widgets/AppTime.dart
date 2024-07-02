import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class ApptimeTile extends StatefulWidget {
  ApptimeTile({super.key, this.mandatoryicon, this.labelname, this.Icons});
  final bool? mandatoryicon;
  final String? labelname;
  final Icon? Icons;

  @override
  _ApptimeTileState createState() => _ApptimeTileState();
}

class _ApptimeTileState extends State<ApptimeTile> {
  TimeOfDay? selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelname != null)
          RichText(
            text: TextSpan(
              text: widget.labelname,
              style: SubHeading2,
              children: [
                widget.mandatoryicon == true
                    ? TextSpan(text: " *", style: TextStyle(color: Colors.red))
                    : TextSpan(),
              ],
            ),
          ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          leading: widget.Icons,
          title: Text(
            selectedTime == null
                ? 'Select Time'
                : selectedTime!.format(context),
            style: TextStyle(color: Colors.black),
          ),
          tileColor: ColourResources.greywhite.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          onTap: () => _selectTime(context),
        ),
      ],
    );
  }
}
