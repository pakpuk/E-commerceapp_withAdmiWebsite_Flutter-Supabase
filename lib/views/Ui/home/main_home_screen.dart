import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/views/Ui/favorites_screen.dart';
import 'package:ecom_app/views/Ui/home/home_screen.dart';
import 'package:ecom_app/views/Ui/profile_screen.dart';
import 'package:ecom_app/views/Ui/store_screen.dart';
import 'package:ecom_app/views/logic/cubit/nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainHomeScreen extends StatelessWidget {
  MainHomeScreen({super.key});
  final List<Widget> screens = [
    HomeScreen(),
    StoreScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          NavBarCubit cubit = context.read<NavBarCubit>();
          return Scaffold(
            body: SafeArea(child: screens[cubit.currentindex]),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(color: AppColors.kWhiteColor),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: GNav(
                    onTabChange: (index) {
                      cubit.changeIndex(index);
                    },
                    rippleColor: AppColors
                        .kPrimaryColor, // tab button ripple color when pressed
                    hoverColor:
                        AppColors.kPrimaryColor, // tab button hover color

                    tabBorderRadius: 15,
                    // tab animation curves
                    duration:
                        Duration(milliseconds: 400), // tab animation duration
                    gap: 8, // the tab button gap between icon and text
                    color: AppColors.kGreyColor, // unselected icon color
                    activeColor:
                        AppColors.kWhiteColor, // selected icon and text color
                    iconSize: 24, // tab button icon size
                    tabBackgroundColor: AppColors
                        .kPrimaryColor, // selected tab background color
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 5), // navigation bar padding
                    tabs: [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.store,
                        text: 'Likes',
                      ),
                      GButton(
                        icon: Icons.favorite,
                        text: 'Search',
                      ),
                      GButton(
                        icon: Icons.person,
                        text: 'Profile',
                      )
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
