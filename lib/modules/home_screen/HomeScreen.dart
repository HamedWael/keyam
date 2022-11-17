import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyam/shared/styles/colors.dart';

import '../../models/keyam_model.dart';
import '../../shared/components/components.dart';
import '../details_screen/details_screen.dart';
import '../keyam_screen/keyam_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Keyam model = Keyam();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.asset('assets/images/logo.png'),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        "قيم وحياة هو مشروع قومي يهدف إلى نشر وتفعيل مجموعة من القيم الإنسانية الأساسية في المجتمع ورفع الوعي القيمي والأخلاقي للمواطنين في جمهورية مصر العربية.. يتم تنفيذه بالتعاون ما بين مؤسسة أجيال مصر ومؤسسة مصر الخير مع عدد من الوزارات المصرية الراعية للمشروع مثل: وزارة الشباب والرياضة- وزارة التضامن الاجتماعي- وزارة التنمية المحلية- وزارة الاتصالات- وزارة التربية والتعليم\n\n\nالقيم والأخلاق منظومة مطلقة منفتحة تحتاج دائماً أن نرعاها، وهي نقاط على دائرة واحدة لا نعرف بدايتها من نهايتها ولا نستطيع أن نرجح بين واحدة منها دون الأخرى، ولذلك فعندما نذكرها فلا نقصد ترتيبها بقدر ما نقصد أن نعيشها كلها، وهذه القيم منها النزاهة والصدق والبساطة والسلام والمحبة والتعاون والاحترام والمسئولية والتواضع والاتحاد والسعادة، وكلها وكأنما تمثل أركان الرحمة التي وصف بها الله تعالى نفسه وأمرنا بها ووعدنا الخير عليها: فالراحمون يرحمهم الرحمن تبارك وتعالى ارحموا من في الأرض يرحمكم من في السماء. \n\nد/علي جمعة",
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                )
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      margin: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
                      decoration:  BoxDecoration(
                          color: antiFlashWhite3,
                          borderRadius: BorderRadius.circular(8),

                      ),
                      child: MaterialButton(
                        child: Text(
                          'القيم',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onPressed: (){
                          navigateTo(context, const KeyamScreen());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 48,
                      margin: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
                      decoration:  BoxDecoration(
                          color: antiFlashWhite3,
                          borderRadius: BorderRadius.circular(8),

                      ),
                      child: MaterialButton(
                        child: Text(
                          'تواصل معنا',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onPressed: (){
                          navigateTo(context, const DetailsScreen());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


