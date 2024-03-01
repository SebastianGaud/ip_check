// ignore_for_file: public_member_api_docs, sort_constructors_first
// https://api.ipify.org

import "dart:convert";

import "package:http/http.dart" as http;

import "models/ip.dart";

const stringUrl = "https://ipapi.co/json/";

Future<Ip> getIp() async {
  final url = Uri.parse(stringUrl);
  final res = await http.get(url);

  final Map<String, dynamic> data = json.decode(res.body);

  return Ip.fromMap(data);
}
