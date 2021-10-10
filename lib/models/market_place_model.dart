class MarketPlaceModel {
  final int? id;
  final String? image;
  final String? description;

  MarketPlaceModel({
    this.id,
    this.image,
    this.description,
  });
}

List<MarketPlaceModel> featuredServicesList = [
  MarketPlaceModel(
      id: 1,
      image: 'assets/icons/marketplace/icon.png',
      //image: 'assets/images/marketplace/Capture5.jpg',
      description: 'STYLING & CUT'),
  MarketPlaceModel(
      id: 2,
      image: 'assets/icons/marketplace/text.png',
      //image: 'assets/images/marketplace/Capture6.jpg',
      description: 'TEXTURE'),
  MarketPlaceModel(
      id: 3,
      image: 'assets/icons/marketplace/color.png',
      //image: 'assets/images/marketplace/Capture7.jpg',
      description: 'COLOR LAB'),
  MarketPlaceModel(
      id: 4,
      image: 'assets/icons/marketplace/care.png',
      //image: 'assets/images/marketplace/Capture8.jpg',
      description: 'CARE'),
  MarketPlaceModel(
      id: 5,
      image: 'assets/icons/marketplace/package.png',
      //image: 'assets/images/marketplace/Capture9.jpg',
      description: 'PACKAGES'),
  MarketPlaceModel(
      id: 6,
      image: 'assets/icons/marketplace/waxing.png',
      //image: 'assets/images/marketplace/Capture10.jpg',
      description: 'WAXING'),
  MarketPlaceModel(
      id: 7,
      image: 'assets/icons/marketplace/pedi.png',
      //image: 'assets/images/marketplace/Capture11.jpg',
      description: 'PEDI-MANI'),
  MarketPlaceModel(
      id: 8,
      image: 'assets/icons/marketplace/threading.png',
      //image: 'assets/images/marketplace/Capture12.jpg',
      description: 'Threading'),
];
