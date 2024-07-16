import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:senior_code_task/Feature/Favorite/favorite_screen.dart';
import 'package:senior_code_task/Feature/cart/cart_screen.dart';
import 'package:senior_code_task/Feature/home/presentation/views/home_screen.dart';
import 'package:senior_code_task/Feature/main_navigation_bar/presentation/cubit/main_state.dart';
import 'package:senior_code_task/Feature/profile/profile_screen.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInisialState());

  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.store_outlined),
      label: "Shop",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      label: "Cart",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_outline),
      label: "Favorite",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_3_outlined),
      label: "Account",
    )
  ];

  int currentIndex = 0;

  void chagePageIndex(int index) {
    currentIndex = index;
    emit(ChangePageIndexState());
  }

  List<Widget> screen = [
    const HomeScreen(),
    const CartScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
}
