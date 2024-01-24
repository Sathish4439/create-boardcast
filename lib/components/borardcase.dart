import 'package:broadcast/components/store.dart';
import 'package:flutter/material.dart';

class Boardcast extends StatefulWidget {
  TextEditingController name;
  Boardcast({Key? key, required this.name}) : super(key: key);

  @override
  State<Boardcast> createState() => _BoardcastState();
}

class _BoardcastState extends State<Boardcast> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Broadcast Name",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: widget.name,
          decoration: InputDecoration(
              hintText: "Enter name",
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300))),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  
}
