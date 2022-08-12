import 'package:flutter/material.dart';

class ShowGridScreen extends StatefulWidget {
  const ShowGridScreen({super.key});

  @override
  State<ShowGridScreen> createState() => _ShowGridScreenState();
}

class _ShowGridScreenState extends State<ShowGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('그리드스크린입니다.')),
    );
  }
}