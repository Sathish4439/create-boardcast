import 'package:broadcast/components/borardcase.dart';
import 'package:broadcast/components/radiobutton.dart';
import 'package:broadcast/components/store.dart';
import 'package:broadcast/components/textbox.dart';
import 'package:broadcast/components/textbox2.dart';
import 'package:broadcast/components/visible.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

List<String> targetlist = ["website"];
bool isvisible = false;

TextEditingController name = TextEditingController();
TextEditingController tbox = TextEditingController();

List<String> userInput = [];

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text("Boardcasts"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 300, right: 300),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create new Boardcast",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Boardcast(name: name),
                SizedBox(
                  height: 15,
                ),
                textbox(
                  hint: "Select",
                  title: "Target Channel",
                  reqlist: ["website"],
                ),
                SizedBox(
                  height: 15,
                ),
                textbox(
                  hint: "Send a message",
                  title: "Broadcast Type",
                  reqlist: [
                    "Send message",
                    "send messange with option",
                    "Tigger a path"
                  ],
                ),
                Textbox2(
                  title: "Broadcast Message",
                  tbox: tbox,
                ),
                MyRadioButtons(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        CommonList.addValue("BoardCast Name", name.text);
                        CommonList.addValue("Boardcast Message", tbox.text);
                        String jsonFormat = CommonList.toJson();
                        print(jsonFormat);
                      },
                      child: Container(
                        height: 30,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Save draft",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
