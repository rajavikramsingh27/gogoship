import 'package:flutter/material.dart';


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
