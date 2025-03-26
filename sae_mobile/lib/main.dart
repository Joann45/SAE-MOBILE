import 'dart:convert';

class Place {
  final String id;
  final String name;
  final String type;
  final String? phone;
  final String? website;
  final String? openingHours;
  final double latitude;
  final double longitude;

  Place({
    required this.id,
    required this.name,
    required this.type,
    this.phone,
    this.website,
    this.openingHours,
    required this.latitude,
    required this.longitude,
  });

  // Convertit le JSON en Objet Place
  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json["osm_id"],
      name: json["name"] ?? "Inconnu",
      type: json["type"] ?? "Autre",
      phone: json["phone"],
      website: json["website"],
      openingHours: json["opening_hours"],
      latitude: json["geo_point_2d"]["lat"],
      longitude: json["geo_point_2d"]["lon"],
    );
  }

  // Convertit un Objet Place en JSON
  Map<String, dynamic> toJson() {
    return {
      "osm_id": id,
      "name": name,
      "type": type,
      "phone": phone,
      "website": website,
      "opening_hours": openingHours,
      "latitude": latitude,
      "longitude": longitude,
    };
  }
}
