// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:gogoship/Controllers/TabbarTabController.dart';
// import 'package:gogoship/Utils/Global.dart';
//
// class TabbarTab extends StatelessWidget {
//   const TabbarTab({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(TabbarScreenController());
//
//     final tabs = [
//       // StatusScreen(),
//       // User(),
//       // SignUp(),
//
//     ];
//
//     double iconSize = 28;
//
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(0),
//         child: AppBar(
//           elevation: 0,
//           brightness: Brightness.dark,
//           backgroundColor: HexColor('#FF0001'),
//         ),
//       ),
//       body: Obx(() => tabs[controller.selectedIndex.value]),
//       bottomNavigationBar:
//       BottomNavigationBar(
//         currentIndex:controller.selectedIndex.value,
//         type:BottomNavigationBarType.fixed,
//         backgroundColor: Colors.white,
//
//
//         items:[
//           BottomNavigationBarItem(
//
//             icon:  Icon(
//               Icons.home,
//               // color: Colors.black12,
//               size:40.0,
//             ),
//             activeIcon:Icon(
//               Icons.home,
//               color: Colors.red,
//               size:40.0,
//             ),
//
//             // icon:Image.asset(
//             //   'assets/image/home.png',
//             //   height: iconSize,
//             //   color: Colors.black12,
//             // ),
//
//             // activeIcon: Image.asset(
//             //   'assets/image/home.png',
//             //   color: Colors.black12,
//             //
//             //   height: iconSize,
//             // ),
//             title:Text(
//               '',
//             ),
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon:  Icon(
//               Icons.supervised_user_circle_outlined,
//               // color: Colors.black12,
//               size:40.0,
//             ),
//             activeIcon:Icon(
//               Icons.supervised_user_circle_outlined,
//               color: Colors.red,
//               size:40.0,
//             ),
//             // icon:Image.asset(
//             //   'assets/image/user.png',
//             //   height: iconSize,
//             //   color: Colors.black38,
//             // ),
//             // activeIcon: Image.asset(
//             //   'assets/image/user.png',
//             //   color: Colors.black38,
//             //
//             //   height: iconSize,
//             //
//             // ),
//             title:Text(
//               '',
//             ),
//             backgroundColor:Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon:  Icon(
//               Icons.settings,
//               // color: Colors.black12,
//               size:40.0,
//             ),
//             activeIcon:Icon(
//               Icons.settings,
//               color: Colors.red,
//               size:40.0,
//             ),
//             // icon:Image.asset(
//             //   'assets/image/settings.png',
//             //   height: iconSize,
//             //   color: Colors.black38,
//             // ),
//             // activeIcon: Image.asset(
//             //   'assets/image/settings.png',
//             //   height: iconSize,
//             //   color: Colors.black38,
//             //
//             // ),
//             title:Text(
//               '',
//             ),
//             backgroundColor: Colors.white,
//           ),
//
//
//         ],
//         onTap:(index) {
//           controller.selectedIndex.value = index;
//
//         },
//       ),
//     );
//   }
// }
