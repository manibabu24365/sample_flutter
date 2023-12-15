import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/all_constans.dart';
import 'package:sample_flutter/main.dart';


class YourAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;


  const YourAppbar({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppBar(
            toolbarHeight: height,
            //toolbarHeight:  height-30.00,
            automaticallyImplyLeading: false,
            elevation: 0.0,
            backgroundColor: login_passcode_box,
            centerTitle: true,
            actions: [
              new Padding(
                padding: const EdgeInsets.only(right: 25),
                child: new Container(
                    alignment: Alignment.centerRight,
                    height: 48.0,
                    width: 48.0,
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                              context,MaterialPageRoute(builder: (context) => AlertDialogExampleApp()));
                      },
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
