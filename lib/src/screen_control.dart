import 'package:app_develop/src/screens/explore_screen.dart';
import 'package:app_develop/src/screens/home_screen.dart';
import 'package:app_develop/src/screens/library_screen.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  final Stream<int> viewCtrl;
  const Screen({super.key, required this.viewCtrl});

  @override
  State<Screen> createState() => _ScreenState();
}


class _ScreenState extends State<Screen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0); //最初に表示するインデックス
    listenPage(); //インデックスの監視
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: const [HomeScreen(),ExploreScreen(),LibraryScreen()],
    );
  }

  // footerでボタンが押されたらインデックスが流れてくる
  listenPage(){
    widget.viewCtrl.listen((event) { // <- listenする
      _pageController.animateToPage(event,
          duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    });
  }
}
