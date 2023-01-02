class ItemModel {
  String? _title;
  int? _id;

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    _title = parsedJson['title'];
    _id = parsedJson['id'];
  }
  String? get title => _title;
  int? get id => _id;
}
