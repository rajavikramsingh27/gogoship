import 'package:flutter/material.dart';



class ButtonDone extends StatelessWidget {
  const ButtonDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
         alignment: Alignment.center,
        height: 44,
        width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 20,right: 20),
        child: Text(
          'Done',
          style: TextStyle(
            fontFamily: 'GEDinarOne',
            fontSize: 20,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          // border: Border.all(
          //   color: Colors.yellow,
          //   width: 0.5,
          // ),
          borderRadius: BorderRadius.circular(10),
        )
    ),
      ],
    );
  }
}


class CustomElevatedButton extends StatelessWidget {
  final Function()? onTap;
  final String? text;

  const CustomElevatedButton({Key? key, this.onTap, this.text,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      child: ElevatedButton(
        onPressed: () {

        },
        // onPressed: onTap,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          text!,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
