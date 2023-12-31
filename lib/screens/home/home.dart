import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ZekrCubit, ZekrStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Center(
          child: Text(
              'q',
            style: TextStyle(
              fontFamily: 'fotograami-separator',
              fontSize: 80,
            ),
          ),
        );
      },
    );
  }
}