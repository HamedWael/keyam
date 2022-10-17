import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyam/modules/home_screen/HomeScreen.dart';
import 'package:keyam/shared/components/components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
