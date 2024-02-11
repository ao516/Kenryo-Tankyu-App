import 'package:flutter/material.dart';

class ResultHeader extends StatefulWidget implements PreferredSizeWidget{

  final String searchWord;
  const ResultHeader({Key? key, required this.searchWord}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


  @override
  State<ResultHeader> createState() => _ResultHeaderState();
}

class _ResultHeaderState extends State<ResultHeader> {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: Text(widget.searchWord),
    );
  }
}
