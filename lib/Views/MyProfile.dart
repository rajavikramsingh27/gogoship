import 'package:flutter/material.dart';
import 'package:gogoship/Components/DrawerStyle.dart';
import 'package:get/get.dart';
import 'package:gogoship/Controllers/MyProfileController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Components/TextFields.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    final controller = Get.put(MyProfileController());

    return Scaffold(
        backgroundColor: ColorStyle.secondaryColor,
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        drawer: DrawerStyle(),
        appBar: AppBarStyle(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        body: SingleChildScrollView(
          padding: EffectStyle.paddingMyProfile(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 40,
                    ),
                    Text(
                      'My Profile',
                      style: TextStyles.button1.apply(
                        color: Colors.black,
                        fontFamily: 'GEDinarOne',
                      ),
                    ),
                  ],
                ),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorStyle.bgColor,
                    width: 0.5,
                  ),
                  color: ColorStyle.bgColor,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  ImageStyle.wingscomedy,
                  height: 138,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Name',
                style: TextStyles.button.apply(
                  color: Colors.white,
                  fontFamily: 'GEDinarOne',
                ),
              ),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Address',
                style: TextStyles.button.apply(
                  color: Colors.white,
                  fontFamily: 'GEDinarOne',
                ),
              ),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Province',
                style: TextStyles.button.apply(
                  color: Colors.white,
                  fontFamily: 'GEDinarOne',
                ),
              ),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Phone',
                style: TextStyles.button.apply(
                  color: Colors.white,
                  fontFamily: 'GEDinarOne',
                ),
              ),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyles.button.apply(
                  color: Colors.white,
                  fontFamily: 'GEDinarOne',
                ),
              ),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Password',
                style: TextStyles.button.apply(
                  color: Colors.white,
                  // fontFamily: 'GEDinarOne',
                ),
              ),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Gender',
                style: TextStyles.button.apply(
                  color: Colors.white,
                  fontFamily: 'GEDinarOne',
                ),
              ),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),

              // Container(
              //   alignment: Alignment.center,
              //   child: InkWell(
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.circular(16),
              //       child: Container(
              //         alignment: Alignment.center,
              //         height: 180,
              //         width: 180,
              //         decoration: BoxDecoration(
              //             color: Colors.black12,
              //             borderRadius:
              //             BorderRadius.circular(16)),
              //         child: controller.postPicture.value,
              //       ),
              //     ),
              //     onTap: () async {
              //       controller.showPopupMenu(context);
              //     },
              //   ),
              // ),
            ],
          ),
        ));
  }
}
