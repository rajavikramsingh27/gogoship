import 'package:flutter/material.dart';
import 'package:gogoship/Components/DrawerStyle.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Components/TextFields.dart';
import 'package:gogoship/Styles/TextStyles.dart';



class AppBarStyle extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final IconData? iconLeading;
  const AppBarStyle({Key? key, this.onTap, this.iconLeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(45.0),
      child: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          ImageStyle.Layer1,
          width: 70,
          height: 70,
        ),
        leading: InkWell(
          child: Icon(
            iconLeading,
            color: ColorStyle.secondaryColor,
            size: 30,
          ),
          onTap: onTap
        ),
        actions: [
          Row(
            children: [
              Text(
                '1,100t',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  // fontFamily: 'GEDinarOne',
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(50);
}



class AppBarStyle1 extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;

  const AppBarStyle1({Key? key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(45.0),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading:  Row(
          children: [
            SizedBox(width: 16,),
            Image.asset(
              ImageStyle.Layer1,
              // width: 70,
              height: 30,
            ),
          ],
        ),
        actions: [
       Row(
         children: [
           Container(
            width: 140,
            height: 34,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: ColorStyle.titleColor,
                ),
                Text(
                  'My Account',
                  style: TextStyles.textSize_20.apply(
                    color: ColorStyle.titleColor,
                    fontSizeFactor: 0.8,
                  ),
                  // style: TextStyle(
                  //   color: ColorStyle.titleColor,
                  //   fontSize: 18,
                  //   fontFamily: 'GEDinarOne',
                  //
                  // ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: ColorStyle.bgColor,
              borderRadius: BorderRadius.circular(10),

            ),
      ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                  child: Icon(
                    Icons.shopping_cart,
                    color: ColorStyle.secondaryColor,
                    size: 30,
                  ),
                  onTap: onTap
              ),
              SizedBox(
                width: 20,
              ),
         ],
       )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(50);
}



class AppBarStyle2 extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;

  const AppBarStyle2({Key? key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(45.0),
      child: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          ImageStyle.Layer1,
          width: 70,
          height: 70,
        ),
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          Row(
            children: [
              Text(
                '1,100t',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  // fontFamily: 'GEDinarOne',
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(50);
}



