class RecentlyViewedServicesModel {
  final int? id;
  final String? image;
  final String? description;

  RecentlyViewedServicesModel({
    this.id,
    this.image,
    this.description,
  });
}

List<RecentlyViewedServicesModel> RecentlyViewedServicesList = [
  RecentlyViewedServicesModel(
      id: 1,
      image: 'assets/images/services/boycut.jpg',
      description: 'Boycut...'),
  RecentlyViewedServicesModel(
      id: 2,
      image: 'assets/images/services/girlcut.jpg',
      description: 'Girlcut...'),
  RecentlyViewedServicesModel(
      id: 3,
      image: 'assets/images/services/mancut.jpg',
      description: 'Mancut...'),
  RecentlyViewedServicesModel(
      id: 4,
      image: 'assets/images/services/POOKY.jpg',
      description: 'POOKY...'),
  RecentlyViewedServicesModel(
      id: 5,
      image: 'assets/images/services/smoothning.jpg',
      description: 'Smoothning...'),
  RecentlyViewedServicesModel(
      id: 6,
      image: 'assets/images/services/straight.jpg',
      description: 'Straight...'),
  RecentlyViewedServicesModel(
      id: 7,
      image: 'assets/images/services/updos.jpg',
      description: 'Updos...'),
  RecentlyViewedServicesModel(
      id: 8,
      image: 'assets/images/services/womancut.jpg',
      description: 'Womancut...'),
];
