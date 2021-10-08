class PopularServicesModel {
  final int? id;
  final String? image;
  final String? description;

  PopularServicesModel({
    this.id,
    this.image,
    this.description,
  });
}

List<PopularServicesModel> popularServicesList = [
  PopularServicesModel(
      id: 1,
      image: 'assets/images/services/boycut.jpg',
      description: 'Boycut...'),
  PopularServicesModel(
      id: 2,
      image: 'assets/images/services/girlcut.jpg',
      description: 'Girlcut...'),
  PopularServicesModel(
      id: 3,
      image: 'assets/images/services/mancut.jpg',
      description: 'Mancut...'),
  PopularServicesModel(
      id: 4,
      image: 'assets/images/services/POOKY.jpg',
      description: 'POOKY...'),
  PopularServicesModel(
      id: 5,
      image: 'assets/images/services/smoothning.jpg',
      description: 'Smoothning...'),
  PopularServicesModel(
      id: 6,
      image: 'assets/images/services/straight.jpg',
      description: 'Straight...'),
  PopularServicesModel(
      id: 7,
      image: 'assets/images/services/updos.jpg',
      description: 'Updos...'),
  PopularServicesModel(
      id: 8,
      image: 'assets/images/services/womancut.jpg',
      description: 'Womancut...'),
];
