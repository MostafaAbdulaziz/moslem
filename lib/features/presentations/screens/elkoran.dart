import 'package:flutter/material.dart';
import 'package:moslem/core/utiles/components.dart';
import 'package:moslem/core/utiles/images.dart';
import 'package:moslem/features/presentations/widgets.dart';

class ElhoranScreen extends StatelessWidget {
  const ElhoranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 180,
              backgroundImage: AssetImage(elaksa),
              child: textOfApp(text: 'القرءان', font: 65),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 105,
              decoration: decoreOfContainers(),
              child: Row(
                children: [
                  circleAvatar(
                      radius: 35,
                      color: Colors.blueGrey,
                      child: const Icon(
                        Icons.favorite,
                        size: 40,
                        color: Colors.red,
                      )),
                  sizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textOfApp(text: 'القراءة الاخيرة', font: 17),
                      textOfApp(text: 'سورة البكرة ,أية 6', font: 17)
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              decoration: decoreOfContainers(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      textOfApp(text: 'أية اليوم'),
                      const Spacer(),
                      textOfApp(text: 'المعارج,أية 12'),
                    ],
                  ),
                  textOfApp(text: 'و صاحبته و أخيه'),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(right: 105, top: 7),
                    width: double.infinity,
                    height: 40,
                    decoration: decoreOfContainers(color: Colors.blueGrey),
                    child: textOfApp(text: 'His wife and his brother'),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: 130,
                  height: 50,
                  decoration: decoreOfContainers(),
                  child: Row(
                    children: [
                      const Icon(Icons.reviews),
                      textOfApp(text: 'المراجعة')
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: 130,
                  height: 50,
                  decoration: decoreOfContainers(),
                  child: Row(
                    children: [
                      const Icon(Icons.search),
                      textOfApp(text: 'البحث')
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 350,
              decoration: decoreOfContainers(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      textOfApp(text: 'جزء'),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.blueGrey),
                        child: textOfApp(text: 'شاهد المزيد'),
                      )
                    ],
                  ),
                  sizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 260,
                            decoration:
                                decoreOfContainers(color: Colors.black12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        circleAvatar(
                                            radius: 30, color: Colors.black),
                                        circleAvatar(
                                            radius: 25, color: Colors.white),
                                        circleAvatar(
                                            radius: 24, color: Colors.black),
                                        textOfApp(
                                            text: '1',
                                            color: Colors.white,
                                            font: 30)
                                      ],
                                    ),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        textOfApp(text: 'جزء واحد', font: 22),
                                        textOfApp(
                                            text: 'جزء الأول',
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                      ],
                                    ))
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: EdgeInsets.all(5),
                                    width: double.infinity,
                                    decoration: decoreOfContainers(color: Colors.black),
                                    child: ListView.separated(
                                        itemBuilder: (context,index)=>Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                circleAvatar(radius: 14,color: Colors.white70),
                                                circleAvatar(radius: 13,color: Colors.black),
                                                circleAvatar(radius: 12,color: Colors.white),
                                              ],
                                            ),
                                            sizedBox(width: 5),
                                            textOfApp(
                                              text: firstPart[index],
                                              font:12,
                                              color: Colors.white
                                            ),
                                          ],
                                        ),
                                        separatorBuilder:(context,index)=> SizedBox(height: 10,),
                                        itemCount: firstPart.length
                                    ),

                                  ),
                                )
                              ],
                            )),
                      ),
                      sizedBox(width: 10),
                      Expanded(
                        child: Container(
                            height: 260,
                            decoration:
                            decoreOfContainers(color: Colors.black12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        circleAvatar(
                                            radius: 30, color: Colors.black),
                                        circleAvatar(
                                            radius: 25, color: Colors.white),
                                        circleAvatar(
                                            radius: 24, color: Colors.black),
                                        textOfApp(
                                            text: '2',
                                            color: Colors.white,
                                            font: 30)
                                      ],
                                    ),
                                    Expanded(
                                        child: Column(
                                          children: [
                                            textOfApp(text: 'جزء اثنان', font: 22),
                                            textOfApp(
                                                text: 'جزء الثانى',
                                                color:
                                                Colors.black.withOpacity(0.5)),
                                          ],
                                        ))
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: EdgeInsets.all(5),
                                    width: double.infinity,
                                    decoration: decoreOfContainers(color: Colors.black),
                                    child: ListView.separated(
                                        itemBuilder: (context,index)=>Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                circleAvatar(radius: 14,color: Colors.white70),
                                                circleAvatar(radius: 13,color: Colors.black),
                                                circleAvatar(radius: 12,color: Colors.white),
                                              ],
                                            ),
                                            sizedBox(width: 5),
                                            textOfApp(
                                                text: secondPart[index],
                                                font:12,
                                                color: Colors.white
                                            ),
                                          ],
                                        ),
                                        separatorBuilder:(context,index)=> SizedBox(height: 10,),
                                        itemCount: secondPart.length
                                    ),

                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 275,
              decoration: decoreOfContainers(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      textOfApp(text: 'سورة'),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.blueGrey),
                        child: textOfApp(text: 'شاهد المزيد'),
                      )
                    ],
                  ),
                  sizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                        crossAxisCount: 3,
                      childAspectRatio: 4/2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        counterOfElsowr(text: 'الفاتحة', numberOfElsora: 1),
                        counterOfElsowr(text: 'النساء', numberOfElsora: 2),
                        counterOfElsowr(text: 'الاعراف', numberOfElsora: 3),
                        counterOfElsowr(text: 'البقره', numberOfElsora: 4),
                        counterOfElsowr(text: 'المائدة', numberOfElsora: 5),
                        counterOfElsowr(text: 'الأنفال', numberOfElsora: 6),
                        counterOfElsowr(text: 'أل عمران', numberOfElsora: 7),
                        counterOfElsowr(text: 'الأنعام', numberOfElsora: 8),
                        counterOfElsowr(text: 'التوبة', numberOfElsora: 9),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ))),
      ),
    );
  }
}
