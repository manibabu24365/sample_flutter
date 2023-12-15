import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/all_constans.dart';
import 'package:sample_flutter/appbar2.dart';
import 'package:sample_flutter/appbar3.dart';
import 'package:sample_flutter/main.dart';


class SuccessScreen extends StatefulWidget {
   final String timer_value;
  const SuccessScreen(this.timer_value, {Key? key}) : super(key: key);

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  double screenheight = 0.0;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final screen_height = MediaQuery.of(context).size.height;
    print(widget.timer_value);

    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: YourAppbar3(
          height:  40,
        ),
        /*appBar: YourAppbarCart(
          height: SizeConfig.safeBlockHorizontal * 25,
        ),*/
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            //height: SizeConfig.safeBlockHorizontal * 155,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                  child: Image.asset(
                    "images/success.png",
                    fit: BoxFit.cover,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
                  child: Text(
                    "Thank you!!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: login_passcode_text,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Text(
                    "Your Parking Timer has Successfully Extended for " +widget.timer_value,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: login_passcode_text,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  )),

            ]),
          ),
        ));
  }
}
