import 'package:flutter/material.dart';
import 'package:gallery_test/components/colors.dart';
import 'package:gallery_test/components/custom_text_field.dart';

class CustomDateTimePicker extends StatefulWidget {
  final String? title;
  CustomDateTimePicker({Key? key, this.title}) : super(key: key);

  @override
  _CustomDateTimePickerState createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  late DateTime pickedDate;

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: grey),
      child: Container(
        height: 48,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey[50]),
        child: ListTile(
          title: Text(
              " ${pickedDate.day}.${pickedDate.month}.${pickedDate.year}."),
          trailing: Icon(Icons.calendar_today),
          onTap: _pickDate,
        ),
      ),
    );
  }

  _pickDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: pickedDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));

    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }
}
// ListTile(
//               title: Text(
//                   " ${pickedDate.day}.${pickedDate.month}.${pickedDate.year}."),
//               trailing: Icon(Icons.keyboard_arrow_down),
//               onTap: _pickDate,
//             ),