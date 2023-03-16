
import 'package:flutter/material.dart';
import 'package:moslem/features/presentations/widgets.dart';

class Elsala {
  Widget widget;
  String elsala;
  String? time;
  IconData icon;

  Elsala({
    required this.widget,
    required this.icon,
    required this.elsala,
     this.time
  });
}

List<Elsala>  itemsList=[
  Elsala(
      widget: Stack(
        children:  [
          circleAvatar(
            color: Colors.black,
          ),
          circleAvatar(
            radius:12 ,
            color: Colors.white,
          ),
        ],
      ),
      icon: Icons.add_alert_sharp,
      elsala:'الفجر',
      time: '03:53'),
  Elsala(
      widget:  circleAvatar(
        color:Colors.yellowAccent,
      ),
      icon: Icons.access_time_sharp,
      elsala:'الشروق',
      time: '05:20'),
  Elsala(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          circleAvatar(
            color:Colors.yellowAccent,
          ),
          const Text(
            '-----',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
        ],
      ),
      icon: Icons.add_alert_sharp,
      elsala:'الظهر',
      time: '11:58'),
  Elsala(
      widget:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          circleAvatar(
            color:Colors.yellowAccent,
          ),
          const Text(
            '-----',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
        ],
      ),
      icon: Icons.add_alert_sharp,
      elsala:'العصر',
      time: '15:35'),
  Elsala(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          circleAvatar(
            color:Colors.yellowAccent,
          ),
          Text(
            '-----',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
        ],
      ),
      icon: Icons.add_alert_sharp,
      elsala:'المغرب',
      time: '18:36'),
  Elsala(
      widget: Stack(
        children:  [
          circleAvatar(
            color: Colors.black,
          ),
          circleAvatar(
            radius:12 ,
            color: Colors.white,
          ),
        ],
      ),
      icon: Icons.add_alert_sharp,
      elsala:'العشاء',
      time: '19:57'),
];
List<String> nameOfElsala=[
  'الفجر',
  'الظهر',
  'العصر',
  'المغرب',
  'العشاء',
];


List<Elsala>  ElfagerList=[
  Elsala(
      widget: Stack(
        alignment: Alignment.center,
        children: [
          circleAvatar(),
          circleAvatar(color: Colors.white,radius: 15)
        ],
      ),
      icon: Icons.access_time_filled_outlined,
      elsala:'صلاه السنه قبل صلاة الفجر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(color: Colors.red),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاة الفجر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'الأذكار بعد الفجر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'دعاء بعد صلاة الفجر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'اقرأ بعض أيات القرءان',
  ),
  Elsala(
widget: Stack(
alignment: Alignment.center,
children: [
circleAvatar(),
circleAvatar(color: Colors.white,radius: 15)
],
),
icon: Icons.access_time_filled_outlined,
elsala:'اقرأ بعض أيات القرءان',
),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'أذكار الصباح',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'أذكار الصباح',
  )
];

List<Elsala>  sorokList=[
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاه السنه اشراغ',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاة السنة الضحى',
  ),
];

List<Elsala>  elzohrList=[
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاه السنه قبل الظهر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(color: Colors.red),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاة الظهر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'الأذكار بعد صلاة الظهر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'دعاء بعد صلاة الظهر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاة السنة بعد الظهر',
  ),
];

List<Elsala>  elasrList=[
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاه السنه قبل العصر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(color: Colors.red),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاة لبعصر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'الأذكار بعد صلاة العصر',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'دعاء بعد صلاة العصر',
  ),
  Elsala(
    icon: Icons.access_time_filled_outlined,
    elsala: '',
    widget: Icon(Icons.access_time_filled_outlined),
    time: ''
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'أذكار المساء',
  ),
];

List<Elsala>  elmhrbList=[
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاه السنه قبل المغرب',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(color: Colors.red),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاة المغرب',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'الأذكار بعد صلاة المغرب',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'دعاء بعد صلاة المغرب',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاة السنة بعد المغرب',
  ),
];

List<Elsala>  elashaList=[
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاه السنه قبل العشاء',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(color: Colors.red),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاة العشاء',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'الأذكار بعد صلاة العشاء',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'دعاء بعد صلاة العشاء',
  ),
  Elsala(
    widget: Stack(
      alignment: Alignment.center,
      children: [
        circleAvatar(),
        circleAvatar(color: Colors.white,radius: 15)
      ],
    ),
    icon: Icons.access_time_filled_outlined,
    elsala:'صلاة السنة بعد العشاء',
  ),
];

List<Elsala>  elsonaList=[
Elsala(
widget: Stack(
alignment: Alignment.center,
children: [
circleAvatar(),
circleAvatar(color: Colors.white,radius: 15)
],
),
icon: Icons.access_time_filled_outlined,
elsala:'صلاه السنه تهجد',
),
Elsala(
widget: Stack(
alignment: Alignment.center,
children: [
circleAvatar(color: Colors.red),
circleAvatar(color: Colors.white,radius: 15)
],
),
icon: Icons.access_time_filled_outlined,
elsala:'صلاه السنه وتر',
),
];

List<String> firstPart=[
  'سورة الفاتحة.أية 1',
  'سورة البقرة.أية 44',
  'سورة البقرة.أية 75',
  'سورة البقرة.أية 106',
];

List<String> secondPart=[
  'سورة البقرة.أية 42',
  'سورة البقرة.أية 57',
  'سورة البقرة.أية 73',
  'سورة البقرة.أية 83',
];

List<String> elazkarOfElsala=[
  'الفجر',
  'الظهر',
  'العصر',
  'المغرب',
  'العشاء',
];

List<String> elazkarOfElsabahAndElmasa=[
  'الصباح',
  'المساء',
];