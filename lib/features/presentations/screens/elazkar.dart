import 'package:flutter/material.dart';
import 'package:moslem/core/utiles/components.dart';
import 'package:moslem/core/utiles/images.dart';
import 'package:moslem/features/presentations/widgets.dart';

class ElazkarScreen extends StatelessWidget {
  const ElazkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 180,
                    backgroundImage: AssetImage(elaksa),
                    child: textOfApp(text: 'الاذكار', font: 65),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      materialButton(title: 'الأمس', width: 50),
                      sizedBox(width: 10),
                      materialButton(title: 'اليوم', width: 50),
                      sizedBox(width: 10),
                      materialButton(title: 'غد', width: 50),
                      sizedBox(width: 10),
                      materialButton(title: 'الأربعاء 17 اغسطس', width: 50),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 300,
                    decoration: decoreOfContainers(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textOfApp(text: 'أذكار بعد الصلاة'),
                        sizedBox(height: 15),
                        Expanded(
                          child: ListView.separated(
                              physics:const NeverScrollableScrollPhysics(),
                              itemBuilder: (context,index)=>Row(
                                children: [
                                  Icon(Icons.dark_mode_outlined),
                                  sizedBox(width: 5),
                                  textOfApp(text: elazkarOfElsala[index])
                                ],
                              ),
                              separatorBuilder: (context,index)=>sizedBox(height: 10),
                              itemCount: elazkarOfElsala.length
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 150,
                    decoration: decoreOfContainers(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textOfApp(text: 'أذكار الصباح و المساء'),
                        sizedBox(height: 15),
                        Expanded(
                          child: ListView.separated(
                            physics:const NeverScrollableScrollPhysics(),
                              itemBuilder: (context,index)=>Row(
                                children: [
                                  Icon(Icons.dark_mode_outlined),
                                  sizedBox(width: 5),
                                  textOfApp(text: elazkarOfElsabahAndElmasa[index])
                                ],
                              ),
                              separatorBuilder: (context,index)=>sizedBox(height: 10),
                              itemCount: elazkarOfElsabahAndElmasa.length
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}
