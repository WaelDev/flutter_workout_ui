import 'package:flutter/material.dart';
import 'package:flutter_workout_app/model/training_model.dart';

class DetailsScreen extends StatelessWidget {
  final TrainingModel model;

  DetailsScreen(this.model);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Programme Details',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                model.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity - 10,
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
          ],
        ),
      ),
    );
  }
}
