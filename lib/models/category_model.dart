class CategoryModel{
  late final String?id;
  late final String label;
  late final String icon;


  CategoryModel(
      {
        required this.id,
        required this.label,
        required this.icon,

      });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    label = json['name'];
     icon = json['thumbnail'];
    }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = label;
    data['thumbnail'] = icon;
    return data;
  }
}





