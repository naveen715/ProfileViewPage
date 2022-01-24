import 'dart:convert';
import 'package:http/http.dart'as http;
import '../main.dart';
import 'Class_userinfo.dart';
Future getUserInfo() async {
  final response = await http.get(Uri.parse('https://py.crewbella.com/user/api/profile/chiragbalani'));
  if (response.statusCode == 200) {
    print(response.body);
    userinfo = UserInfo.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load users');
  }
}