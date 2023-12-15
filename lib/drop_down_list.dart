import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/all_constans.dart';
import 'package:sample_flutter/appbar2.dart';
import 'package:sample_flutter/main.dart';
import 'package:sample_flutter/success_screen.dart';

const List<String> list = <String>['10 Min', '20 Min', '30 Min', '40 Min'];
class DropdownMenuApp extends StatelessWidget {
  const DropdownMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: YourAppbar2(
          height:  40,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 0, 15, 0),
            //height: SizeConfig.safeBlockHorizontal * 155,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                  child: Image.asset(
                    "images/parking_timer_2.png",
                    fit: BoxFit.cover,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
                  child: DropdownMenuExample()),


            ]),
          ),
        )
      ),
    );
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SuccessScreen(value!)));
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
