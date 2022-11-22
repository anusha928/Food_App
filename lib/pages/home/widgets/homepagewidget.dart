import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/account/accountpageWidget.dart';

import 'package:food_app/pages/home/widgets/mainfoodpage.dart';
import 'package:food_app/utils/colors.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  var _selectedpage = 0;
  //late PersistentTabController _controller;

  List screens = [
    MainFoodPage(),
    Container(
      child: Center(
        child: Text("next"),
      ),
    ),
    Container(
      child: Center(
        child: Text("history"),
      ),
    ),
   AccountPage()
  ];

  void onTap(int index) {
    setState(() {
      _selectedpage = index;
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = PersistentTabController(initialIndex: 0);
  // }

  // List<Widget> _buildScreens() {
  //   return [
  //     MainFoodPage(),
  //     Container(
  //       child: Center(
  //         child: Text("next"),
  //       ),
  //     ),
  //     Container(
  //       child: Center(
  //         child: Text("history"),
  //       ),
  //     ),
  //     Container(
  //       child: Center(
  //         child: Text("profile"),
  //       ),
  //     )
  //   ];
  // }

  // List<PersistentBottomNavBarItem> _navBarsItems() {
  //   return [
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.home),
  //       title: ("Home"),
  //       activeColorPrimary: AppColors.mainColor,
  //       inactiveColorPrimary: Colors.amberAccent,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.archivebox_fill),
  //       title: ("Archive"),
  //       activeColorPrimary: AppColors.mainColor,
  //       inactiveColorPrimary: Colors.amberAccent,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.cart_fill),
  //       title: ("Cart"),
  //       activeColorPrimary: AppColors.mainColor,
  //       inactiveColorPrimary: Colors.amberAccent,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.person),
  //       title: ("Me"),
  //       activeColorPrimary: AppColors.mainColor,
  //       inactiveColorPrimary: Colors.amberAccent,
  //     ),
  //   ];
  //  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedpage],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: Colors.amberAccent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedpage,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive), label: "Archive"),
            BottomNavigationBarItem(icon: Icon(Icons.add_chart), label: "cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          ]),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return PersistentTabView(
  //     context,
  //     controller: _controller,
  //     screens: _buildScreens(),
  //     items: _navBarsItems(),
  //     confineInSafeArea: true,
  //     backgroundColor: Colors.white, // Default is Colors.white.
  //     handleAndroidBackButtonPress: true, // Default is true.
  //     resizeToAvoidBottomInset:
  //         true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
  //     stateManagement: true, // Default is true.
  //     hideNavigationBarWhenKeyboardShows:
  //         true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
  //     decoration: NavBarDecoration(
  //       borderRadius: BorderRadius.circular(10.0),
  //       colorBehindNavBar: Colors.white,
  //     ),
  //     popAllScreensOnTapOfSelectedTab: true,
  //     popActionScreens: PopActionScreensType.all,
  //     itemAnimationProperties: ItemAnimationProperties(
  //       // Navigation Bar's items animation properties.
  //       duration: Duration(milliseconds: 200),
  //       curve: Curves.ease,
  //     ),
  //     screenTransitionAnimation: ScreenTransitionAnimation(
  //       // Screen transition animation on change of selected tab.
  //       animateTabTransition: true,
  //       curve: Curves.ease,
  //       duration: Duration(milliseconds: 200),
  //     ),
  //     navBarStyle:
  //         NavBarStyle.style1, // Choose the nav bar style with this property.
  //   );
  // }
}
