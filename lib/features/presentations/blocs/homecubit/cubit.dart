import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moslem/features/presentations/blocs/homecubit/states.dart';
import 'package:moslem/features/presentations/screens/active.dart';
import 'package:moslem/features/presentations/screens/aladhan.dart';
import 'package:moslem/features/presentations/screens/elazkar.dart';
import 'package:moslem/features/presentations/screens/elkoran.dart';
import 'package:moslem/features/presentations/screens/list.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit():super(InitialHomeState());
  static HomeCubit get(context)=>BlocProvider.of(context);

  int indexOfPage=0;
  void changeIndexOfPageOfNav(int index)
  {
    indexOfPage=index;
    emit(ChangeIndexOfBottomNavState());
  }

  List<Widget> allScreen=[
    const AladhanScreen(),
    const ActivingScreen(),
    const ElhoranScreen(),
    const ElazkarScreen(),
    const ListScreen()
  ];
}