import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senior_code_task/Feature/main_navigation_bar/presentation/cubit/main_cubit.dart';
import 'package:senior_code_task/Feature/main_navigation_bar/presentation/cubit/main_state.dart';
import 'package:senior_code_task/core/utils/app_color.dart';

class MainNvigationBarScreen extends StatelessWidget {
  const MainNvigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          final cubit = context.read<MainCubit>();
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: AppColor.kprimaryColor,
                unselectedItemColor: AppColor.black,
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.chagePageIndex(index);
                },
                items: cubit.items),
            body: cubit.screen[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
