import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:get/get.dart';
import 'package:gogoship/Views/AuthList.dart';

class OnBording extends StatefulWidget {
  const OnBording({Key? key}) : super(key: key);

  @override
  _OnBordingState createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  SwiperController _controller = SwiperController();
  int indexPage = 0;

  int totalPages = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        autoplay: false,
        loop: false,
        itemCount: totalPages,
        scrollDirection: Axis.horizontal,
        pagination: SwiperPagination(
            builder: new DotSwiperPaginationBuilder(
          color: ColorStyle.primaryColor,
          activeColor: ColorStyle.bgColor,
        )),

        onIndexChanged: (index) {
          indexPage = index;
        },

        // control: SwiperControl(
        //   padding: EdgeInsets.only(left: 16, right: 16),
        //   // size: 50,
        //   color: Colors.red,
        //   disableColor: Colors.grey,
        //   iconPrevious: Icons.arrow_back_ios,
        //   iconNext: Icons.arrow_forward_ios,
        // ),

        controller: _controller,
        itemBuilder: (BuildContext context, int index) {
          // return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Image.network(
                  'https://images.unsplash.com/photo-1513094735237-8f2714d57c13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c2hvcHBpbmd8ZW58MHx8MHx8&w=1000&q=80',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fitHeight,
                ),
                Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      ),
                    )),
                Center(
                    // bottom: 290,
                    // left: 122,
                    child: Image.asset(
                        ImageStyle.Layer8,
                        // width: 143,
                        height: 214
                    )),
                Positioned(
                    bottom: 0,
                    child: Container(
                      height: 220,
                      child: Stack(
                        children: [
                          Image.asset(
                            ImageStyle.Layer10,
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width,
                            height: 220,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 70,
                                ),
                                Text(
                                  'Shopping Online',
                                  style: TextStyles.button2.apply(
                                    color: Colors.white,
                                    fontFamily: 'GEDinarOne'
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Become So Easy',
                                  style: TextStyles.button2.apply(
                                    color: Colors.white,
                                      fontFamily: 'GEDinarOne',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: InkWell(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: ColorStyle.bgColor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 3,
                    spreadRadius: 3,
                    color: Colors.black12)
              ]),
          child: Icon(Icons.arrow_forward),
        ),
        onTap: () {
          indexPage = indexPage + 1;
          if (indexPage == totalPages)
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => AuthList()),
              (Route<dynamic> route) => false,
            );
          // Get.to(HomeScreen);
          else
            _controller.move(indexPage);
        },
      ),
    );
  }
}
