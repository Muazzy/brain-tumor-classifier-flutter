import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:brain_tumor_calssifier/views/pages/profile_page.dart';
import 'package:brain_tumor_calssifier/views/pages/detector_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DetectorPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: buttomNav(),
    );
  }

  Widget buttomNav() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: GNav(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        gap: 8,
        color: Colors.purple,
        activeColor: Colors.purple,
        rippleColor: Colors.purple[100]!,
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() => _selectedIndex = index);
        },
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
