import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ozkor_app/layout/cubit/cubit.dart';
import 'package:ozkor_app/layout/layout.dart';
import 'package:ozkor_app/shared/app_cubit/app_cubit.dart';
import 'package:ozkor_app/shared/app_cubit/app_states.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => AppCubit()),
        BlocProvider(create: (BuildContext context) => ZekrCubit()),
      ],
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state) {},
        builder: (context,state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'أٌذكر',
            home: Layout(),
          );
        },
      ),
    );
  }
}
