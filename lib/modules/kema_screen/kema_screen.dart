import 'package:flutter/material.dart';

import '../../models/keyam_model.dart';
import '../../shared/constants.dart';

class KemaScreen extends StatelessWidget {
  const KemaScreen({Key? key, this.img, this.des, this.ind}) : super(key: key);
  final dynamic img;
  final dynamic des;
  final dynamic ind;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Image.asset(img),
                      SizedBox(height: 24,),
                      Text(
                        des,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
