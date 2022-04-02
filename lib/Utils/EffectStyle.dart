import 'package:flutter/material.dart';
import 'package:gogoship/Utils/ColorStyle.dart';

class EffectStyle {

  shadowSetting() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 6,
          offset: Offset(0, 0), // Shadow position
        ),
      ],
    );
  }

  shadowSettingQuestionaire() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 6,
          offset: Offset(0, 0), // Shadow position
        ),
      ],
    );
  }

  shadowRegistrationSelect() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),

      boxShadow: [
        BoxShadow(
          color: ColorStyle.fromHex("6AC7BE"),
          blurRadius: 4,
          offset: Offset(0, 4), // Shadow position
        ),
      ],

    );
  }

}
