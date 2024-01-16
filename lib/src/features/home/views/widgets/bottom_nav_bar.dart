import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // int _selectedIndex = 0;

  // final List _navItems = [
  //   BottomNavItem(Icons.home, "Home"),
  //   BottomNavItem(Icons.track_changes_rounded, "Courses"),
  //   BottomNavItem(Icons.people_alt_rounded, "Profile"),
  //   BottomNavItem(Icons.settings, "Settings"),
  // ];

  // void _handleBottomNavItemTap(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: IconTheme(
        data: IconThemeData(size: 24, color: Colors.grey.shade500),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.track_changes_rounded,
                size: 24,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.people_alt_rounded,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.timer,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem {
  IconData icon;
  String title;

  BottomNavItem(this.icon, this.title);
}
