import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/features/presentations/widgets.dart';

import '../../../core/utiles/components.dart';
import '../../../core/utiles/images.dart';

class ActivingScreen extends StatelessWidget {
  const ActivingScreen({Key? key}) : super(key: key);

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
                    child: textOfApp(text: 'الأذان', font: 65),
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 105,
                    decoration: decoreOfContainers(),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            circleAvatar(color: Colors.black, radius: 30),
                            circleAvatar(color: Colors.white, radius: 15)
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      circleAvatar(
                                          color: Colors.red, radius: 10),
                                      circleAvatar(
                                          color: Colors.black, radius: 5)
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  textOfApp(text: 'واجب', font: 15),
                                  const Spacer(),
                                  textOfApp(text: '0%')
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration:
                                    decoreOfContainers(color: Colors.black),
                                height: 5,
                                width: double.infinity,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      circleAvatar(
                                          color: Colors.red, radius: 10),
                                      circleAvatar(
                                          color: Colors.black, radius: 5)
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  textOfApp(text: 'واجب', font: 15),
                                  const Spacer(),
                                  textOfApp(text: '0%')
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration:
                                    decoreOfContainers(color: Colors.black),
                                height: 5,
                                width: double.infinity,
                              )
                            ],
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
                    height: 490,
                    decoration: decoreOfContainers(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                circleAvatar(
                                  color: Colors.black,
                                ),
                                circleAvatar(
                                  radius: 12,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            textOfApp(text: 'الفجر'),
                            const Spacer(),
                            textOfApp(text: '0.3:54'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => index == 4 ||
                                      index == 6
                                  ? Padding(
                                    padding: const EdgeInsets.only(right: 16),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          circleAvatar(
                                              radius: 2, color: Colors.black),
                                          sizedBox(height: 5),
                                          circleAvatar(
                                              radius: 2, color: Colors.black),
                                          sizedBox(height: 5),
                                          circleAvatar(
                                              radius: 2, color: Colors.black),
                                          sizedBox(height: 5),
                                        ],
                                      ),
                                  )
                                  : Row(
                                      children: [
                                        ElfagerList[index].widget,
                                        sizedBox(width: 10),
                                        textOfApp(
                                            text: ElfagerList[index].elsala),
                                        const Spacer(),
                                        Icon(
                                          ElfagerList[index].icon,
                                          size: 30,
                                        )
                                      ],
                                    ),
                              separatorBuilder: (context, index) => sizedBox(height: 15),
                              itemCount: ElfagerList.length),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 200,
                    decoration: decoreOfContainers(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                    circleAvatar(
                    radius: 20,
                      color: Colors.yellowAccent,
                    ),
                            const SizedBox(
                              width: 10,
                            ),
                            textOfApp(text: 'شروق الشمس'),
                            const Spacer(),
                            textOfApp(text: '05:20'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => Row(
                                children: [
                                  sorokList[index].widget,
                                  sizedBox(width: 10),
                                  textOfApp(
                                      text: sorokList[index].elsala),
                                  const Spacer(),
                                  Icon(
                                    sorokList[index].icon,
                                    size: 30,
                                  )
                                ],
                              ),
                              separatorBuilder: (context, index) => sizedBox(height: 40),
                              itemCount: sorokList.length),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 335,
                    decoration: decoreOfContainers(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.wb_sunny,size: 30,),
                            const SizedBox(
                              width: 10,
                            ),
                            textOfApp(text: 'الظهر'),
                            const Spacer(),
                            textOfApp(text: '11:58'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) =>Row(
                                children: [
                                  elzohrList[index].widget,
                                  sizedBox(width: 10),
                                  textOfApp(
                                      text: elzohrList[index].elsala),
                                  const Spacer(),
                                  Icon(
                                    elzohrList[index].icon,
                                    size: 30,
                                  )
                                ],
                              ),
                              separatorBuilder: (context, index) => sizedBox(height: 15),
                              itemCount: elzohrList.length),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 400,
                    decoration: decoreOfContainers(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.wb_sunny_rounded,size: 30,),
                            const SizedBox(
                              width: 10,
                            ),
                            textOfApp(text: 'العصر'),
                            const Spacer(),
                            textOfApp(text: '15:35'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => index == 4
                                  ? Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    circleAvatar(
                                        radius: 2, color: Colors.black),
                                    sizedBox(height: 5),
                                    circleAvatar(
                                        radius: 2, color: Colors.black),
                                    sizedBox(height: 5),
                                    circleAvatar(
                                        radius: 2, color: Colors.black),
                                    sizedBox(height: 5),
                                  ],
                                ),
                              )
                                  :Row(
                                children: [
                                  elasrList[index].widget,
                                  sizedBox(width: 10),
                                  textOfApp(
                                      text: elasrList[index].elsala),
                                  const Spacer(),
                                  Icon(
                                    elasrList[index].icon,
                                    size: 30,
                                  )
                                ],
                              ),
                              separatorBuilder: (context, index) => sizedBox(height: 15),
                              itemCount: elasrList.length),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 335,
                    decoration: decoreOfContainers(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.sunny_snowing,size: 30,),
                            const SizedBox(
                              width: 10,
                            ),
                            textOfApp(text: 'المغرب'),
                            const Spacer(),
                            textOfApp(text: '18:35'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) =>Row(
                                children: [
                                  elmhrbList[index].widget,
                                  sizedBox(width: 10),
                                  textOfApp(
                                      text: elmhrbList[index].elsala),
                                  const Spacer(),
                                  Icon(
                                    elmhrbList[index].icon,
                                    size: 30,
                                  )
                                ],
                              ),
                              separatorBuilder: (context, index) => sizedBox(height: 15),
                              itemCount: elmhrbList.length),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 340,
                    decoration: decoreOfContainers(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                circleAvatar(
                                  color: Colors.black,
                                ),
                                circleAvatar(
                                  radius: 12,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            textOfApp(text: 'العشاء'),
                            const Spacer(),
                            textOfApp(text: '19:56'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) =>Row(
                                children: [
                                  elashaList[index].widget,
                                  sizedBox(width: 10),
                                  textOfApp(
                                      text: elashaList[index].elsala),
                                  const Spacer(),
                                  Icon(
                                    elashaList[index].icon,
                                    size: 30,
                                  )
                                ],
                              ),
                              separatorBuilder: (context, index) => sizedBox(height: 15),
                              itemCount: elashaList.length),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 60,
                    decoration: decoreOfContainers(),
                    child:Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            circleAvatar(),
                            circleAvatar(color: Colors.white,radius: 15)
                          ],
                        ),
                        sizedBox(width: 10),
                        textOfApp(
                            text: 'أذكار قبل النوم'),
                        const Spacer(),
                        const Icon(
                          Icons.dark_mode_outlined,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 120,
                    decoration: decoreOfContainers(),
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>Row(
                          children: [
                            elsonaList[index].widget,
                            sizedBox(width: 10),
                            textOfApp(
                                text: elsonaList[index].elsala),
                            const Spacer(),
                            Icon(
                              elsonaList[index].icon,
                              size: 30,
                            )
                          ],
                        ),
                        separatorBuilder: (context, index) => sizedBox(height: 15),
                        itemCount: elsonaList.length),
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
