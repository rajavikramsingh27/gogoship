import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gogoship/Components/TextFields.dart';
import 'package:gogoship/Styles/ColorStyle.dart';

class TextFields extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? hintText;
  final TextInputType? keyboardType;

  TextFields({
    Key? key,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.controller,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorStyle.borderColorTF.withOpacity(0.4), width: 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorStyle.borderColorTF.withOpacity(0.4), width: 1.0),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 16, fontFamily: 'Raleway', color: Colors.black26),
      ),
    );
  }
}

class TextFieldsPassword extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;

   TextFieldsPassword({Key? key,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.hintText,
  }) : super(key: key);

  bool obscureText = true;

  @override
  _TextFieldsPasswordState createState() => _TextFieldsPasswordState();
}

class _TextFieldsPasswordState extends State<TextFieldsPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorStyle.borderColorTF.withOpacity(0.4), width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorStyle.borderColorTF.withOpacity(0.4), width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
              fontSize: 16, fontFamily: 'Raleway', color: Colors.black26),
          suffixIcon: InkWell(
            child: Icon(
              widget.obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              size: 24,
              color: ColorStyle.fromHex("#011947").withOpacity(0.6),
            ),
            onTap: () {
              widget.obscureText = !widget.obscureText;

              setState(() {

              });
            },
          )),
    );
  }
}


// class TextFieldsPassword extends StatelessWidget {
//   final TextEditingController? controller;
//   final bool? obscureText;
//   final String? hintText;
//   final TextInputType? keyboardType;
//
//   TextFieldsPassword({
//     Key? key,
//     this.keyboardType = TextInputType.text,
//     this.obscureText = false,
//     this.controller,
//     this.hintText,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       keyboardType: keyboardType,
//       obscureText: obscureText!,
//       decoration: InputDecoration(
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//                 color: ColorStyle.borderColorTF.withOpacity(0.4), width: 1.0),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//                 color: ColorStyle.borderColorTF.withOpacity(0.4), width: 1.0),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           hintText: hintText,
//           hintStyle: TextStyle(
//               fontSize: 16, fontFamily: 'Raleway', color: Colors.black26),
//           suffixIcon: InkWell(
//             child: Icon(
//               Icons.visibility_off_sharp,
//               size: 24,
//               color: ColorStyle.fromHex("#011947").withOpacity(0.6),
//             ),
//             onTap: () {
//
//             },
//           )),
//     );
//   }
// }
