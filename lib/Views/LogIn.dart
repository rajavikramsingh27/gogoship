import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gogoship/Views/VerificationCode.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Styles/Components.dart';


class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/Layer.png',
                          width: 53,
                          height: 80,
                        ),
                      ),
                      Container(
                        decoration: EffectStyle.curveAuth(Colors.white),
                        width: double.infinity,
                        padding: EffectStyle.paddingAuthWhite(),
                        child: Column(
                          children: [
                            Text("Log In to your Account.", style: TextStyles.heading1),
                            SizedBox(
                              height: 40,
                            ),
                            ComponentsTF(
                              title: 'EMAIL OR PHONE NUMBER',
                              hintText: 'johnsondoe@nomail.com',
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            ComponentsTFPassword(
                              title: 'PASSWORD',
                              hintText: '******',
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(0),
                                  alignment: Alignment.centerRight,
                                  fixedSize: Size.fromWidth(MediaQuery.of(context).size.width)
                              ),
                              child: Text('Recover Password?',
                                style: TextStyles.Title.apply(fontWeightDelta: 1),
                              ),
                              onPressed: () {

                              },
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            InkWell(
                              child: ComponentsAuthSubmit.submitAuth('PROCEED'),
                              onTap: () {
                                Get.to(VerificationCode());
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ComponentsSocialSignIn(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ComponentsAuthBottom.authBottom('New User? ', 'Swipe Up', Icon(Icons.keyboard_arrow_up))
          ],
        )
    );
  }
}
