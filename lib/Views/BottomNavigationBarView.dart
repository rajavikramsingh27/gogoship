import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';

class BottomNavigationBarView extends StatelessWidget {
  final Function()? onTap1;
  final Function()? onTap2;
  final Function()? onTap3;

  const BottomNavigationBarView({
    Key? key,
    this.onTap1,
    this.onTap2,
    this.onTap3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              color: ColorStyle.bgColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home),
                        Text(
                          'Home',
                          style: TextStyles.textSize_14.apply(
                            color: ColorStyle.titleColor
                          ),
                        ),
                      ],
                    ),
                    onTap: onTap1),
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.account_balance_wallet_rounded),
                      Text(
                        'My Wallet',
                        style: TextStyles.textSize_14.apply(
                            color: ColorStyle.titleColor
                        ),
                      ),
                    ],
                  ),
                  onTap: onTap3,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          alignment: Alignment.center,
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.add,
                    color: ColorStyle.primaryColor,
                    size: 40,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: ColorStyle.borderColorTF1,
                      boxShadow: [
                        BoxShadow(
                            color: ColorStyle.secondaryColor.withOpacity(0.6),
                            offset: Offset(0, 3),
                            blurRadius: 10)
                      ]),
                ),
                Text(
                  'New Order',
                  style: TextStyles.textSize_14.apply(
                      color: ColorStyle.titleColor
                  ),
                ),
              ],
            ),
            onTap: onTap2,
          ),
        ),
      ],
    );
  }
}
