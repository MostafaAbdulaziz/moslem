import 'package:flutter/material.dart';
import 'package:moslem/features/presentations/screens/aladhan.dart';
import 'package:moslem/features/presentations/screens/elkoran.dart';
import 'features/presentations/screens/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const HomeScreen() ,
      theme: ThemeData(
          scaffoldBackgroundColor:Colors.blueGrey,
        bottomNavigationBarTheme:  BottomNavigationBarThemeData(
          backgroundColor: Colors.black.withOpacity(0.0),
          type: BottomNavigationBarType.fixed,
          //selected items
          selectedIconTheme: IconThemeData(color: Colors.black,size: 40) ,
          selectedLabelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,
          selectedItemColor: Colors.black,

          //unselected items
          unselectedIconTheme: IconThemeData(color: Colors.white,size: 20) ,
          unselectedLabelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold) ,
          unselectedItemColor: Colors.white,
        ),
        buttonTheme:const ButtonThemeData(
          buttonColor: Colors.blue,
        )

      ),
      themeMode: ThemeMode.light,
    );
  }

}