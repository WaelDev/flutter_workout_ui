import 'package:flutter/material.dart';

Widget customIconButton({
  required IconData icon,
  String? text,
  Color? colorIcon = const Color(0xff1091ff),
}) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: colorIcon,
            size: 20,
          ),
          if (text != null)
            Row(
              children: [
                SizedBox(width: 8),
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
        ],
      ),
    ),
  );
}
