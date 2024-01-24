import 'package:broadcast/components/store.dart';
import 'package:broadcast/components/textbox.dart';
import 'package:broadcast/pages/homepage.dart';
import 'package:flutter/material.dart';

class MyRadioButtons extends StatefulWidget {
  @override
  _MyRadioButtonsState createState() => _MyRadioButtonsState();
}

class _MyRadioButtonsState extends State<MyRadioButtons> {
  String _selectedOption = 'Send Now';

  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text('Send Now'),
                    value: 'Send Now',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value.toString();
                        isvisible = false;
                        CommonList.addValue("Action", _selectedOption);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text('Schedule'),
                    value: 'Schedule',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value.toString();
                        isvisible = true;
                      });
                    },
                  ),
                ),
              ],
            ),
            Visibility(
              visible: isvisible,
              child: Column(
                children: [
                  textbox(
                    title: "Broadcast Repetition",
                    reqlist: ["once", "daily", "weekly", "Monthly"],
                    hint: "once",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  textbox(
                      title: "Time",
                      reqlist: [
                        "18:35",
                        "18:40",
                        "18:45",
                        "18:50",
                        "18:55",
                        "18:60",
                        "18:65",
                        "18:70",
                        "18:75",
                        "18:80",
                        "18:85",
                      ],
                      hint: "18:00")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
