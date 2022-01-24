import 'package:flutter/material.dart';
import 'package:profile_view_app/api_&_utils/Class_userinfo.dart';
import 'package:profile_view_app/api_&_utils/get_user_info.dart';
import 'package:profile_view_app/screens/MyProfile.dart';
import 'package:profile_view_app/screens/sigin.dart';

void main() {
  runApp(const MyApp());
}
var userinfo ;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lobster'
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void initState() {
    super.initState();
    getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return signin();
  }
}
