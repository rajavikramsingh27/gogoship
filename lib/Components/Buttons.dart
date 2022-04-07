
import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/SizeStyle.dart';
import 'package:flutter/material.dart';

class ButtonDone extends StatelessWidget {

  final Function()? onTap;

  const ButtonDone({Key? key, this.onTap,})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorStyle.bgColor,
          fixedSize: Size(MediaQuery.of(context).size.width, 50),
          elevation: 2,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeStyle.radius),
          ),
        ),

        child: Text(
          'Done',
          style: TextStyle(
            fontFamily: 'GEDinarOne',
            fontSize: 20,
          ),
        ),
        onPressed: onTap,
    );
  }
}

