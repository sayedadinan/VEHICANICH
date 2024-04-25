import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShopModel {
  final String id;
  final String name;
  final String email;
  final int whatsapp;
  final String password;
  final String shopname;
  final LatLng shoplocation;
  final String address;
  final String description;
  final DateTime startingtime;
  final DateTime closingtime;
  final String licenceimagepath;
  final String mmimagepath;
  final String bannerimagepath;

  ShopModel({
    required this.id,
    required this.name,
    required this.email,
    required this.whatsapp,
    required this.password,
    required this.shopname,
    required this.shoplocation,
    required this.address,
    required this.description,
    required this.startingtime,
    required this.closingtime,
    required this.licenceimagepath,
    required this.mmimagepath,
    required this.bannerimagepath,
  });

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "whatsapp": whatsapp,
      "password": password,
      "shopname": shopname,
      "location": {
        "latitude": shoplocation.latitude,
        "longitude": shoplocation.longitude
      },
      "address": address,
      "description": description,
      "startingtime": startingtime.toIso8601String(),
      "closingtime": closingtime.toIso8601String(),
      "licenceimagepath": licenceimagepath,
      "mmimagepath": mmimagepath,
      "bannerimagepath": bannerimagepath,
    };
  }
}
