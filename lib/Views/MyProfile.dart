import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Components/AppBarTab.dart';
import 'package:gogoship/Components/TextFields.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';



class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorStyle.secondaryColor,
        resizeToAvoidBottomInset: true,
        appBar: AppBarStyle.appBar,
        body:SingleChildScrollView(
          padding: EffectStyle.paddingMyProfile(),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 45,
                    ),
                    Text(
                      'My Profile',
                      style: TextStyles.button1.apply(
                        color: Colors.black,
                      ),),
                  ],
                ),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorStyle.bgColor,
                    width: 0.5,),
                  color: ColorStyle.bgColor,
                  borderRadius: BorderRadius.circular(12),                        ),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                child:Image.asset(
                  ImageStyle.wingscomedy,
                  height: 138,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Name',
                style: TextStyles.button.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Address',
                style: TextStyles.button.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Province',
                style: TextStyles.button.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Phone',
                style: TextStyles.button.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyles.button.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Password',
                style: TextStyles.button.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Gender',
                style: TextStyles.button.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
            ],
          ),
        )
    );
  }
}
