import 'package:flutter/material.dart';
import 'package:gogoship/Components/DrawerStyle.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Components/TextFields.dart';

// class AppBarStyle  {
//   final Function()? onTap;
//
//   static PreferredSize get appBar => PreferredSize(
//     preferredSize: Size.fromHeight(45.0),
//     child: AppBar(
//
//       elevation: 0,
//       backgroundColor: Colors.white,
//       centerTitle: true,
//       title: Image.asset(
//         ImageStyle.Layer1,
//         width: 70,
//         height: 70,
//       ),
//       leading: InkWell(
//         child: Icon(
//           Icons.menu,
//           color: ColorStyle.secondaryColor,
//           size: 30,
//         ),
//         // onTap: ()=> _scaffoldKey.currentState.openDrawer(),
//       ),
//       actions: [
//         Row(
//           children: [
//             Text(
//               '1,100t',
//               style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.black
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           width: 20,
//         )
//       ],
//     ),
//   );
// }

class AppBarStyle extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;

  const AppBarStyle({Key? key, this.onTap})
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
            Icons.menu,
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