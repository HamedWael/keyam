import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyam/shared/constants.dart';
import 'package:keyam/shared/styles/colors.dart';

import '../../models/keyam_model.dart';
import '../../shared/components/components.dart';
import '../kema_screen/kema_screen.dart';

class KeyamScreen extends StatefulWidget {
  const KeyamScreen({Key? key}) : super(key: key);

  @override
  State<KeyamScreen> createState() => _KeyamScreenState();
}

class _KeyamScreenState extends State<KeyamScreen> {
  @override
  Widget build(BuildContext context) {

    Keyam model = Keyam();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: keyamBuild(name: "1", imgPath: "assets/images/img1.png")),
                        const SizedBox(width: 8,),
                        Expanded(child: keyamBuild(name: "2", imgPath: "assets/images/img2.png")),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Expanded(child: keyamBuild(name: "3", imgPath: "assets/images/img3.png")),
                        const SizedBox(width: 8,),
                        Expanded(child: keyamBuild(name: "4", imgPath: "assets/images/img4.png")),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Expanded(child: keyamBuild(name: "5", imgPath: "assets/images/img5.png")),
                        const SizedBox(width: 8,),
                        Expanded(child: keyamBuild(name: "6", imgPath: "assets/images/img5.png")),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Expanded(child: keyamBuild(name: "7", imgPath: "assets/images/img7.png")),
                        const SizedBox(width: 8,),
                        Expanded(child: keyamBuild(name: "8", imgPath: "assets/images/img8.png")),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Expanded(child: keyamBuild(name: "9", imgPath: "assets/images/img9.png")),
                        const SizedBox(width: 8,),
                        Expanded(child: keyamBuild(name: "10", imgPath: "assets/images/img10.png")),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Expanded(child: keyamBuild(name: "11", imgPath: "assets/images/img11.png")),
                        const SizedBox(width: 8,),
                        Expanded(child: Container()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// GridView.count(
// crossAxisCount: 2,
// mainAxisSpacing: 24,
// crossAxisSpacing: 24,
// childAspectRatio: 1/1.24,
// physics: const BouncingScrollPhysics(),
// children: List.generate(keyamModel.length, (index){
// return InkWell(
// onTap: (){
// navigateTo(
// context,
// KemaScreen(
// img: keyamModel[index]["imagePath"],
// des: keyamModel[index]["description"],
// ind: index,
// )
// );
// },
// child: Container(
// padding: const EdgeInsets.all(24),
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(24)
// ),
// child: Column(
// children: [
// Image.asset(
// //keyamModel[index]["imagePath"],
// "assets/images/img1.png"
// //fit: BoxFit.cover,
// ),
// Text(
// keyamModel[index]["name"],
// style: const TextStyle(
// fontSize: 20,
// color: Colors.black
// ),
// )
// ],
// ),
// ),
// );
// }
// )
// )
