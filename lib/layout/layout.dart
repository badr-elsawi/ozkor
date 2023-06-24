import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ozkor_app/layout/cubit/cubit.dart';
import 'package:ozkor_app/layout/cubit/states.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ZekrCubit, ZekrStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = ZekrCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: Colors.black,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey[100]!,
                  color: Colors.black,
                  tabs: [
                    GButton(
                      icon: Icons.home_rounded,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.sunny,
                      text: 'أذكار الصباح',
                    ),
                    GButton(
                      icon: Icons.nightlight,
                      text: 'أذكار المساء',
                    ),
                  ],
                  selectedIndex: cubit.currentIndex,
                  onTabChange: (index) {
                    cubit.changeScreen(index);
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
