class TrainingModel {
  String title;
  String image;
  String date;
  int comments;
  bool running;
  bool training;
  bool cardio;

  TrainingModel({
    required this.title,
    required this.image,
    required this.date,
    required this.comments,
    this.running = false,
    this.training = false,
    this.cardio = false,
  });
}
