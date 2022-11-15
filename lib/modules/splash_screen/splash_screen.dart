import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../home_screen/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const Directionality(
          textDirection: TextDirection.rtl,
          child: HomeScreen());
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  //color: Colors.amber,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.center,
                  //color: Colors.blue,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset('assets/images/agyal.jpeg'),
                          )
                      ),
                      Expanded(child: Container()),
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset('assets/images/misr.jpeg'),
                          )
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  //color: Colors.purple,
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                          child: Image.asset('assets/images/min1.jpg')
                      ),
                      Expanded(child: Container()),
                      Expanded(
                          child: Image.asset('assets/images/min2.png')
                      ),
                      Expanded(child: Container()),
                      Expanded(
                          child: Image.asset('assets/images/min3.jpeg')
                      ),
                      Expanded(child: Container()),
                      Expanded(
                          child: Image.asset('assets/images/min4.jpeg')
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  //color: Colors.teal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
