import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ozkor_app/layout/cubit/states.dart';
import 'package:ozkor_app/screens/almasaa/almasaa.dart';
import 'package:ozkor_app/screens/alsabah/alsabah.dart';
import 'package:ozkor_app/screens/home/home.dart';

class ZekrCubit extends Cubit<ZekrStates> {
  ZekrCubit() : super(ZekrInitialState());

  static ZekrCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    Home(),
    AlsabahScreen(),
    AlmasaaScreen(),
  ];

  void changeScreen(int index){
    currentIndex = index;
    emit(ChangeScreenState());
  }
}
