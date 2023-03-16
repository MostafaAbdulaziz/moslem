import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/core/utiles/images.dart';

import '../widgets.dart';
class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics:const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  radius: 180,
                  backgroundImage: AssetImage(elaksa),
                  child: textOfApp(text: 'قائمة', font: 65),
                ),
                Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 70,
              decoration: decoreOfContainers(color: Colors.greenAccent),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart),
                  sizedBox(width: 10),
                  textOfApp(text: 'ازالة الاعلانات')
                ],
              ),
            ),
                Container(
                  height: 300,
                  width: double.infinity,
                  margin:const EdgeInsets.symmetric(horizontal: 10),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    //childAspectRatio: 3/1,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.access_time_filled,size: 40,),
                            textOfApp(text: 'القبلة')
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.add_alert_outlined,size: 40,),
                            textOfApp(text: 'بوصلة')
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Icon(Icons.access_time_filled,size: 40,),
                            textOfApp(text: 'مسجد')
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.account_balance_outlined,size: 40,),
                            textOfApp(text: 'حلال')
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.access_time_sharp,size: 40,),
                            textOfApp(text: 'شهريا')
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.access_time_sharp,size: 40,),
                            textOfApp(text: 'سنوى')
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.account_balance_wallet_sharp,size: 40,),
                            textOfApp(text: 'الأعياد')
                          ],
                        ),
                      ),
                    ],

                  ),
                ),
                Container(
                  height: 230,
                  width: double.infinity,
                  margin:const EdgeInsets.symmetric(horizontal: 10),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 3/1,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 50,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.access_time_filled,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'اللغة',font: 15)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.add_alert_outlined,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'موضوع',font: 15)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             const Icon(Icons.access_time_filled,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'اعدادات الاذان',font: 15)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.account_balance_outlined,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'تغير الموقع',font: 15)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.access_time_sharp,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'تصحيح التقوبم الهجرى',font: 15)
                          ],
                        ),
                      ),
                    ],

                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  margin:const EdgeInsets.symmetric(horizontal: 10),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 3/1,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 50,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.star,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'قيم التطبيق',font: 15)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.send,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'الدعم',font: 15)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.android,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: ' تطبيفاتنا',font: 15)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.account_balance_outlined,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'رخصة',font: 15)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.access_time_sharp,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'شارك',font: 15)
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 110,
                        height: 50,
                        decoration: decoreOfContainers(color: Colors.white,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.security,size: 25,),
                            sizedBox(width: 5),
                            textOfApp(text: 'سياسة  الخصوصية',font: 15)
                          ],
                        ),
                      ),
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
