import 'package:flutter/material.dart';
import 'package:keyam/shared/styles/colors.dart';

import '../../modules/kema_screen/kema_screen.dart';


void navigateTo (context, page){
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

appBar({color = Colors.white}){
  return AppBar(
    title: const Text(
      'قيم وحياة',
      style: TextStyle(
        color: Colors.black
      ),
    ),
    centerTitle: true,
    backgroundColor: color,
    iconTheme: const IconThemeData(color: Colors.black),
    elevation: 0,
  );
}

// Widget keyamBuild({imgPath, name}){
//   return InkWell(
//     onTap: (){
//       // navigateTo(
//       //     context,
//       //     KemaScreen(
//       //       img: keyamModel[index]["imagePath"],
//       //       des: keyamModel[index]["description"],
//       //       ind: index,
//       //     )
//       // );
//     },
//     child: Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//           color: antiFlashWhite3,
//           borderRadius: BorderRadius.circular(24)
//       ),
//       child: Column(
//         children: [
//           Text(
//             name,
//             style: const TextStyle(
//                 fontSize: 20,
//                 color: Colors.black
//             ),
//           ),
//           Image.asset(
//               imgPath,
//               fit: BoxFit.cover,
//           ),
//         ],
//       ),
//     ),
//   );
// }

