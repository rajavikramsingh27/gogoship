
import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Components/TextFields.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Styles/SizeStyle.dart';


class ComponentsTF extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? hintText;
  final String? title;
  final TextInputType? keyboardType;

  ComponentsTF({
    Key? key,
    this.controller,
    this.title,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: TextStyles.Title,
        ),
        SizedBox(height: 6),
        TextFields(
          keyboardType: TextInputType.emailAddress,
          hintText: hintText,
          obscureText: obscureText,
        ),
      ],
    );
  }
}

class ComponentsTFPassword extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? title;
  final TextInputType? keyboardType;

  ComponentsTFPassword({
    Key? key,
    this.controller,
    this.title,
    this.hintText,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: TextStyles.Title,
        ),
        SizedBox(height: 6),
        TextFieldsPassword(
          keyboardType: TextInputType.text,
          hintText: hintText,
        ),
      ],
    );
  }
}

class ComponentsAuthSubmit {
  static submitAuth(String text,Function()? onTap ) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: ColorStyle.secondaryColor,
        fixedSize: Size(double.infinity, 60),
        elevation: 2,
        padding: EdgeInsets.only(
          left: 40,
          right: 40,
        ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeStyle.radius),
          ),
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 20,
          ),
          Text(text, style: TextStyles.button),
          Icon(
            Icons.send_outlined,
            color: ColorStyle.primaryColor,
          )
        ],
      ),
      onPressed: onTap
    );
  }
}

class ComponentsSocialSignIn extends StatelessWidget {
  final double width = 64;
  final double height = 64;

  ComponentsSocialSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: ColorStyle.primaryColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 45,
                      color: Colors.black.withOpacity(0.2))
                ]),
            alignment: Alignment.center,
            child: Image.asset(
              ImageStyle.google,
              fit: BoxFit.fill,
              width: 16,
            ),
          ),
          onTap: () {},
        ),
        SizedBox(width: 26,),
        InkWell(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: ColorStyle.primaryColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 45,
                      color: Colors.black.withOpacity(0.2))
                ]),
            alignment: Alignment.center,
            child: Icon(Icons.facebook,
            color: ColorStyle.fromHex("039BE5"),
            )
          ),
          onTap: () {},
        ),
        SizedBox(width: 26,),
        InkWell(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: ColorStyle.primaryColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 45,
                      color: Colors.black.withOpacity(0.2))
                ]),
            alignment: Alignment.center,
            child: Icon(Icons.apple)
          ),
          onTap: () {},
        ),
      ],
    );
  }
}

class ComponentsAuthBottom {
  static authBottom(String txtNormal, String txtBold, Widget icon) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: ColorStyle.primaryColor,
          image: DecorationImage(
              image: AssetImage(ImageStyle.bottomAuth),
              fit: BoxFit.fill)),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: icon,
          ),
          SizedBox(height: 10,),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: txtNormal,
                    style: TextStyles.button.apply(
                        fontSizeDelta: 1
                    )
                ),
                if (txtBold.isNotEmpty)
                  TextSpan(
                      text: txtBold,
                      style: TextStyles.button.apply(
                          fontWeightDelta: 2
                      )
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

