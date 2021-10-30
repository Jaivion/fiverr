import 'dart:convert';

class CompletedModel {
  final String? id;
  final String? schedule_date;
  final String? schedule_time;
  final String? price;
  final String? status;
  final String? payment_status;
  final String? home_order;
  final String? payment_type;
  final String? order_id;
  List user_details;
  List subcats_details;
  final String? shop_name;
  final String? shop_address;

  CompletedModel({
    this.id,
    this.schedule_date,
    this.schedule_time,
    this.price,
    this.status,
    this.payment_status,
    this.home_order,
    this.payment_type,
    this.order_id,
    required this.user_details,
    required this.subcats_details,
    this.shop_name,
    this.shop_address,
  });

  factory CompletedModel.fromJson(Map<String, dynamic> json) {
    return CompletedModel(
      schedule_date: json['schedule_date'] ?? '',
      schedule_time: json['schedule_time'] ?? "",
      id: json['id'] ?? "",
      price: json['price'] ?? '',
      status: json['status'] ?? '',
      payment_status: json['payment_status'] ?? '',
      home_order: json['home_order'] ?? '',
      payment_type: json['payment_type'] ?? "",
      order_id: json['order_id'] ?? "",
      user_details: json['user_details'] ?? "",
      subcats_details: json['subcats_details'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['schedule_date'] = schedule_date;
    data['schedule_time'] = schedule_time;
    data['id'] = id;
    data['price'] = price;
    data['status'] = status;
    data['payment_status'] = payment_status;
    data['home_order'] = home_order;
    data['payment_type'] = payment_type;
    data['order_id'] = order_id;
    data['user_details'] = user_details;
    data['subcats_details'] = subcats_details;

    return data;
  }
}

Userdetails UserdetailsFromJson(String str) =>
    Userdetails.fromJson(json.decode(str));

String UserdetailsToJson(Userdetails data) => json.encode(data.toJson());

class Userdetails {
  var shop_address;

  var shop_name;

  Userdetails({
    this.shop_address,
    this.shop_name,
  });

  factory Userdetails.fromJson(Map<String, dynamic> json) => Userdetails(
        shop_address: json['shop_address'] ?? '',
        shop_name: json['shop_name'] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "shop_address": shop_address.toJson(),
        "shop_name": shop_name.toJson(),
      };
}
