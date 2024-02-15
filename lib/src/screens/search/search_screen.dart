import 'package:app_develop/src/components/search_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchHeader(),
      body: SafeArea(child: Center(
          child: ElevatedButton(onPressed: ()=> context.go('/explore'), child: const Text('またはカテゴリから選ぶ'),
    ),
    ),),
    );
  }
}
