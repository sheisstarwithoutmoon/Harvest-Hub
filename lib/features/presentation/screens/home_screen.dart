import 'package:agriplant/features/presentation/screens/bottom_navigation_bar_screens/cart_screen/cart_screen.dart';
import 'package:agriplant/features/presentation/screens/bottom_navigation_bar_screens/explore_screen/explore_screen.dart';
import 'package:agriplant/features/presentation/screens/bottom_navigation_bar_screens/profile_screen/screens/profile_screen.dart';
import 'package:agriplant/features/presentation/screens/bottom_navigation_bar_screens/services_screen/services_screen.dart';
import 'package:agriplant/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key}); // Named key parameter

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = const [
    ExploreScreen(),
    ServicesScreen(),
    CartScreen(),
    MapScreen(),
    ProfileScreen()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: screens[currentIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() => BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items:  [
          BottomNavigationBarItem(
            icon: const Icon(IconlyLight.home),
            label: AppLocalizations.of(context)!.hm1,
            activeIcon: const Icon(IconlyBold.home),
          ),
          BottomNavigationBarItem(
            icon: const Icon(IconlyLight.call),
            label: AppLocalizations.of(context)!.hm2,
            activeIcon: const Icon(IconlyBold.call),
          ),
          BottomNavigationBarItem(
            icon: const Icon(IconlyLight.buy),
            label: AppLocalizations.of(context)!.hm3,
            activeIcon: const Icon(IconlyBold.buy),
          ),
          const BottomNavigationBarItem(
            icon: Icon(IconlyLight.location), // Use the desired icon here
            label: "Map",
            activeIcon: Icon(IconlyBold.location),
          ),
          BottomNavigationBarItem(
            icon: const Icon(IconlyLight.profile),
            label: AppLocalizations.of(context)!.hm4,
            activeIcon: const Icon(IconlyBold.profile),
          ),
        ],
      );
}
