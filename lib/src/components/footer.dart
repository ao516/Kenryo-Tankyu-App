import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  final Sink<int> viewCtrl;
  const Footer({super.key,  required this.viewCtrl});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int pageIndex = 0;

  navigationItem() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'ホーム',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: '探索',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.bookmarks),
        label: '探索',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: pageIndex,
      onTap: (pageIndex) {
        widget.viewCtrl.add(pageIndex); // <- sinkにインデックスを流す
      },
      items: navigationItem(),
    );

  }

}
