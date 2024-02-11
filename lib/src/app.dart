import 'package:app_develop/src/components/header.dart';
import 'package:app_develop/src/screens/home_screen.dart';
import 'package:flutter/material.dart';


class ScreenManageWidget extends StatefulWidget {
  const ScreenManageWidget({super.key});

  @override
  State<ScreenManageWidget> createState() => _ScreenManageWidgetState();
}

class _ScreenManageWidgetState extends State<ScreenManageWidget> {
  static const _screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body:  _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ホーム',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label:  '探索'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks),
                label:  'ライブラリ'
            ),

          ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
