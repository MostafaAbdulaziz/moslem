
import 'package:flutter/material.dart';
import 'package:moslem/core/utiles/images.dart';
import 'package:moslem/features/presentations/widgets.dart';
import '../../../core/utiles/components.dart';


class AladhanScreen extends StatelessWidget {
  const AladhanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:  [
                CircleAvatar(
                  radius: 180,
                  backgroundImage:AssetImage(elaksa),
                  child: textOfApp(text: 'الأذان', font: 65),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    materialButton(title:  'الأمس',width: 50),
                    sizedBox(width: 10),
                    materialButton(title:  'اليوم',width: 50),
                    sizedBox(width: 10),
                    materialButton(title:  'غد',width: 50),
                    sizedBox(width: 10),
                    materialButton(title:  'الأربعاء 17 اغسطس',width: 50),
                  ],
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 100,
                  decoration: decoreOfContainers(),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          textOfApp(text: 'الأثنين', ),
                          textOfApp(text: '15 أغسطس', ),

                        ],
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textOfApp(text: '17 محرم',),
                          textOfApp(text: 'لا يوجد حدث اسلامى',),

                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 50,
                  decoration: decoreOfContainers(),
                  child: Row(
                    children:  [
                      const Icon(Icons.content_paste),
                      const SizedBox(width: 5,),
                      Expanded(
                        child: textOfApp(text: 'تحسين البطارية_للحصول على اداء أفضل,اسمح للطبيق بالعمل على تحديد قوة الاستخدام'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 50,
                  decoration:decoreOfContainers(),
                  child: Row(
                    children:  [
                      const Icon(Icons.volume_off_sharp),
                      const SizedBox(width: 5,),
                      Expanded(
                        child: textOfApp(text: 'هل يتم عرض اشعارات الاذان بدون صوت ؟ فى بعض الهواتف'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 475,
                  decoration:decoreOfContainers(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textOfApp(text: 'أوقات الصلاة'),
                      const SizedBox(height: 10,),
                      Expanded(
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context,index)=>Row(
                              children: [
                                itemsList[index].widget,
                                const SizedBox(width: 10,),
                                 textOfApp(text: '${itemsList[index].elsala}'),
                                const Spacer(),
                                 textOfApp(text: '${itemsList[index].time}'),
                                const SizedBox(width: 10,),
                                 Icon(itemsList[index].icon)
                              ],
                            ),
                            separatorBuilder: (context,index)=>const SizedBox(height: 20,),
                            itemCount: itemsList.length
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 180,
                  decoration: decoreOfContainers(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textOfApp(text: 'متتبع الصلاة'),
                      const SizedBox(height: 15,),
                      Expanded(
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index)=>Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children:  [
                                    circleAvatar(
                                      radius: 30,
                                    ),
                                    circleAvatar(
                                      radius: 25,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                 textOfApp(text: nameOfElsala[index]),

                              ],
                            ),
                            separatorBuilder: (context,index)=>const SizedBox(width: 5,),
                            itemCount: nameOfElsala.length
                        ),
                      ),
                    ],
                  )
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 200,
                  decoration: decoreOfContainers(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textOfApp(text: 'شروق الشمس و غروب الشمس'),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          circleAvatar(
                            radius: 20,
                            color:Colors.yellowAccent,
                          ),
                           const SizedBox(width: 10,),
                           textOfApp(text: 'شروق الشمس'),
                           const Spacer(),
                           textOfApp(text: '05.20'),
                           const SizedBox(width: 10,),
                           const Icon(Icons.access_time_filled)


                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          Stack(
                            children: [
                              circleAvatar(
                                color:Colors.black,
                              ),
                              circleAvatar(
                                radius:12 ,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          textOfApp(text: 'غروب الشمس'),
                          const Spacer(),
                          textOfApp(text: '18.36'),
                          const SizedBox(width: 10,),
                          const Icon(Icons.access_time_filled)
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 200,
                  decoration: decoreOfContainers(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textOfApp(text: 'صيام'),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          circleAvatar(
                            color:Colors.yellowAccent,
                          ),
                          const SizedBox(width: 10,),
                          textOfApp(text: 'امساك'),
                          const Spacer(),
                          textOfApp(text: '03.45'),
                          const SizedBox(width: 10,),
                          const Icon(Icons.access_time_filled)
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          Stack(
                            children:  [
                              circleAvatar(
                                color:Colors.black,
                              ),
                              circleAvatar(
                                radius:12 ,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          textOfApp(text: 'الافطار'),
                          const Spacer(),
                          textOfApp(text: '18.36'),
                          const SizedBox(width: 10,),
                          const Icon(Icons.access_time_filled)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 280,
                  decoration: decoreOfContainers(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          textOfApp(text: 'أيات اليوم'),
                          const Spacer(),
                          textOfApp(text: 'البقرة,أية 58'),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      textOfApp(text: ' قل هو الله أحد الله الصمد لم يلد و لم يولد و لم يكن له كفوا أحد '),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: decoreOfContainers(color: Colors.blueGrey),
                        width: double.infinity,
                        height: 100,
                        child: textOfApp(
                          text: 'Say, He is God, the One, God the Eternal, He was not begotten, nor was He begotten, and there is none equal to Him  ',
                          maxlines: 4,
                          font: 15
                        )
                      )


                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
