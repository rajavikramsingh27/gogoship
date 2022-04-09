import 'package:flutter/material.dart';

class FontTesting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'GE Dinar One Light',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'GEDinarOne',


            ),
          ),
          Text(
            'GE Dinar One Light',
            style: TextStyle(
                fontSize: 30,
              fontFamily: 'GEDinarOne',
            ),
          ),
        ],
      )
    );
  }
}
