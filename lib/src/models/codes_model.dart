class CodesModel {
  final int? id;
  final String? title;

  const CodesModel({
    this.id,
    this.title,
  });

  factory CodesModel.fromJson(Map<String, dynamic> json) {
    return CodesModel(
      id: json['id'],
      title: json['title'],
    );
  }
}