import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'custom_icon_button.dart';

Widget header() {
  return Container(
    height: 55,
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Row(
      children: [
        customIconButton(icon: FeatherIcons.barChart2, text: 'Sort'),
        SizedBox(width: 5),
        customIconButton(icon: FeatherIcons.sliders, text: 'Refine'),
        Spacer(),
        Row(
          children: [
            customIconButton(
                icon: FeatherIcons.square, colorIcon: Colors.grey[600]),
            customIconButton(icon: FeatherIcons.list),
          ],
        ),
      ],
    ),
  );
}
