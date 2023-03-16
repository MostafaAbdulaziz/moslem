import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moslem/features/presentations/blocs/homecubit/cubit.dart';
import 'package:moslem/features/presentations/blocs/homecubit/states.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocProvider(
        create: (BuildContext context)=>HomeCubit(),
        child: BlocConsumer<HomeCubit,HomeStates>(
          listener: (context,state){},
          builder:(context,state)=>Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items:const  [
                BottomNavigationBarItem(
                    icon: Icon(Icons.coronavirus_rounded),
                    label:'أذان'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_active),
                    label:'يفعل'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_circle_right),
                    label:'القرءان'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_moderator_sharp),
                    label:'اذكار'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz),
                    label:'أكثر'
                ),
              ],
              currentIndex: HomeCubit.get(context).indexOfPage,
              onTap: (index){
                HomeCubit.get(context).changeIndexOfPageOfNav(index);
              },

            ),
            body: HomeCubit.get(context).allScreen[HomeCubit.get(context).indexOfPage],
          ),
        ),
      ),
    );
  }
}
