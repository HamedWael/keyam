import 'package:flutter/material.dart';

import '../../models/keyam_model.dart';

class KemaScreen extends StatelessWidget {
  const KemaScreen({Key? key, this.img, this.des, this.ind}) : super(key: key);
  final dynamic img;
  final dynamic des;
  final dynamic ind;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
          body: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Image.asset(keyamModel[ind]["imagePath"]),
                SizedBox(height: 24,),
                Text(keyamModel[ind]["description"]),
              ],
            ),
          )
      ),
    );
  }
}
