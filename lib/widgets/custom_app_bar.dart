import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.black),
    elevation: 0,
    title: Center(
      child: Text(
        'Latest News',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        size: 22,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          FeatherIcons.search,
          size: 20,
        ),
      ),
    ],
  );
}
