import 'package:flutter/material.dart';
import 'package:sample_flutter/all_constans.dart';
import 'package:sample_flutter/appbar.dart';
import 'package:sample_flutter/drop_down_list.dart';

void main() => runApp(const AlertDialogExampleApp());

class AlertDialogExampleApp extends StatelessWidget {
  const AlertDialogExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: YourAppbar(
          height:  25,
        ),
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Parking Time'),
          content: const Text('Your parking time has expired, Can you Please extend?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DropdownMenuApp())),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text(
        "Extend The Parking",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: login_passcode_keypad_text,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}


