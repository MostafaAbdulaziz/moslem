import 'package:flutter/material.dart';

CircleAvatar circleAvatar({
  double radius = 20,
  Color color = Colors.green,
  AssetImage? image,
  Widget? child,
})
{
  return CircleAvatar(
    radius: radius,
    backgroundColor: color,
    backgroundImage:image ,
    child: child,
  );
}

Text textOfApp({required String text, double font = 20, int maxlines = 3,Color color=Colors.black}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: font,
      color: color,
      fontWeight: FontWeight.bold,
    ),
    overflow: TextOverflow.ellipsis,
    maxLines: maxlines,
  );
}

MaterialButton materialButton({double? width, required String title}) {
  return MaterialButton(
    minWidth: width,
    onPressed: () {},
    child: textOfApp(text: title, font: 15),
  );
}

SizedBox sizedBox({double? width, double? height}) {
  return SizedBox(width: width, height: height);
}

BoxDecoration decoreOfContainers({
  Color color = Colors.white,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(20),
  );
}

Widget counterOfElsowr({
  required String text,
  required int numberOfElsora,
})
{
  return Container(
    padding: const EdgeInsets.only(right: 5),
    width: 110,
    height: 50,
    decoration: decoreOfContainers(color: Colors.black12,),
    child: Row(
    children: [
    Stack(
    alignment: Alignment.center,
    children: [
    circleAvatar(radius: 20,color: Colors.black),
    textOfApp(text: '$numberOfElsora',color: Colors.white)
    ],
    ),
    sizedBox(width: 5),
    textOfApp(text: text,font: 15)
    ],
),
);
 
}
