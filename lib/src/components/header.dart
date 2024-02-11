import 'package:app_develop/src/screens/search_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        height: 40,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: InkWell(
              onTap: () => _openSearchScreen(context),
              child: Container(
                width: 340,
                margin: const EdgeInsets.symmetric(vertical: 10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _openSearchScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
  }
  
}

