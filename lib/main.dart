import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:keyam/layouts/home_layout.dart';

void main() {

  runApp(DevicePreview(
    enabled: true, //!kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app

  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
          child: SafeArea(child: Home())
      ),
    );
  }
}
