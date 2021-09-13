import 'package:flutter/material.dart';

Widget badge(String text) {
  return Container(
    margin: const EdgeInsets.only(right: 8),
    padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
    decoration: BoxDecoration(
      color: Color(0xff1fba42),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 10,
      ),
    ),
  );
}
