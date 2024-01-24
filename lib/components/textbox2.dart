import 'package:broadcast/components/store.dart';
import 'package:broadcast/components/textbox.dart';
import 'package:flutter/material.dart';

class Textbox2 extends StatelessWidget {
  String title;
  TextEditingController tbox;

  Textbox2({super.key, required this.title, required this.tbox});

  @override
  Widget build(BuildContext context) {
    String value;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
          height: 120,
          width: 398,
          child: TextField(
            onEditingComplete: () {
               CommonList.addValue(title, tbox.text);
            },
            controller: tbox,
            keyboardType: TextInputType.multiline,
            minLines: null,
            maxLines: null,
            expands: true,
            decoration: InputDecoration(hintText: "Enter message here"),
          ),
        ),
        textbox(
            title: "Target Segments", reqlist: ["All users"], hint: "All user")
      ],
    );
  }
}
