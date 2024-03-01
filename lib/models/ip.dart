// ignore_for_file: public_member_api_docs, sort_constructors_first
// https://api.ipify.org

import 'dart:convert';

class Ip {
  String ip;
  String region;
  String postal;
  String city;

  Ip({
    required this.ip,
    required this.region,
    required this.postal,
    required this.city,
  });

  @override
  String toString() {
    return "My ip is: $ip region: $region, postal $postal, city: $city";
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'region': region,
      'postal': postal,
      'city': city,
    };
  }

  factory Ip.fromMap(Map<String, dynamic> map) {
    return Ip(
      ip: map['ip'] as String,
      region: map['region'] as String,
      postal: map['postal'] as String,
      city: map['city'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ip.fromJson(String source) =>
      Ip.fromMap(json.decode(source) as Map<String, dynamic>);
}
