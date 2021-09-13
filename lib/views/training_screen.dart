import 'package:flutter/material.dart';
import 'package:flutter_workout_app/widgets/custom_app_bar.dart';
import '../model/data.dart';
import '../widgets/card_item_list.dart';
import '../widgets/header.dart';

class TrainingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: customAppBar(),
      body: Column(
        children: [
          header(),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => cardItemList(
                context,
                listWorkout[index],
              ),
              separatorBuilder: (context, index) => Divider(height: 1),
              itemCount: listWorkout.length,
            ),
          ),
        ],
      ),
    );
  }
}
