import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Utils {
  static Future<dynamic> navigateTo(BuildContext context, Widget screen) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  static Future<dynamic> navigateAnimatedTo(
      BuildContext context, Widget screen) {
    return Navigator.push(context,
        PageTransition(child: screen, type: PageTransitionType.rightToLeft));
  }

  static Future<dynamic> navigateAndFinish(
      BuildContext context, Widget screen) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
