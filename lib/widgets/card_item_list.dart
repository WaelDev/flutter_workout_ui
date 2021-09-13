import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_workout_app/Utils/utils.dart';
import 'package:flutter_workout_app/model/training_model.dart';
import 'package:flutter_workout_app/views/details_screen.dart';
import 'badge.dart';

Widget cardItemList(BuildContext context, TrainingModel model) {
  return InkWell(
    onTap: () {
      print('${model.title}');
      Utils.navigateAnimatedTo(context, DetailsScreen(model));
    },
    child: Container(
      color: Colors.white,
      height: 160,
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,
            height: 110,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              model.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (model.running) badge('Running'),
                  if (model.training) badge('Training'),
                  if (model.cardio) badge('Cardio'),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: 220,
                child: Text(
                  model.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                model.date,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(
                    FeatherIcons.feather,
                    size: 15,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Logan',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    FeatherIcons.messageCircle,
                    size: 15,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 5),
                  Text(
                    '${model.comments}',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
