import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nav();
  }
  void nav(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushNamed(
        context,
        AppRoutes.login,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,  body: Center(child: FlutterLogo(size: 30,textColor: Colors.white,),),
    );
  }
}
