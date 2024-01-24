import 'package:broadcast/components/store.dart';
import 'package:flutter/material.dart';

class textbox extends StatefulWidget {
  List<String> reqlist;
  String hint;
  String title;
  textbox({
    Key? key,
    required this.title,
    required this.reqlist,
    required this.hint,
  }) : super(key: key);

  @override
  State<textbox> createState() => _textboxState();
}

class _textboxState extends State<textbox> {
  String _selectedOption = ""; 

  @override
  void initState() {
    super.initState();
    if (widget.reqlist.isNotEmpty) {
   
      _selectedOption = widget.reqlist[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(),
          ),
          child: ListBody(
            children: [
              DropdownButton<String>(
                isExpanded: true,
                alignment: AlignmentDirectional.center,
                value: _selectedOption.isEmpty ? null : _selectedOption,
                underline: SizedBox(),
                focusColor: Colors.white,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedOption = newValue ?? "";
                  });

                  CommonList.addValue(widget.title, _selectedOption);
                },
                items: widget.reqlist.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(value),
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
