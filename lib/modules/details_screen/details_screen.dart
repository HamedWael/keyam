import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/components/components.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

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
              Container(
                margin: EdgeInsets.only(top:72, bottom:36),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset('assets/images/team.jpg', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 24,),
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsetsDirectional.only(start: 24),
                child: Text(
                  'إنضم إلينا :',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const SizedBox(height: 8,),
              Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsetsDirectional.only(start: 24),
                child: GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse('https://www.facebook.com/groups/248923769551235'));
                    },
                    child: const Text(
                      '{جروب حياة بقيم وقيم لحياة}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          decoration: TextDecoration.underline
                      ),
                    )
                ),
                // child: Link(
                //   //uri: Uri.parse('https://www.facebook.com/groups/248923769551235'),
                //   uri: Uri(
                //     scheme: 'https',
                //     host: 'www.facebook.com',
                //     path: 'groups/248923769551235'
                //   ),
                //   target: LinkTarget.blank,
                //   builder: (context, followLink) => GestureDetector(
                //     onTap: (){
                //       launchUrl(Uri.parse('https://www.facebook.com/groups/248923769551235'));
                //     },
                //     child: const Text(
                //       '{جروب حياة بقيم وقيم لحياة}',
                //       style: TextStyle(
                //           color: Colors.black,
                //           fontSize: 18,
                //         decoration: TextDecoration.underline
                //       ),
                //     )
                //   ),
                // ),
              ),
              Expanded(child: Container(), flex: 2,),
              Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Text(
                                'فكرة',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14
                              ),
                            ),
                            const SizedBox(height: 8,),
                            Text(
                              'محمود أبو جبل',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                        const SizedBox(width: 24,),
                        Column(
                          children: [
                            const Text(
                              'تصميم',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14
                              ),
                            ),
                            const SizedBox(height: 8,),
                            Text(
                              'حامد مطر',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
