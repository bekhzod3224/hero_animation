import 'package:flutter/material.dart';
import 'package:hero_animation/app/core/hero-items.dart';

class HeroDetails extends StatelessWidget {
  const HeroDetails({super.key, required this.data});
  final HeroInfo data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
      ),
      body: Container(
        child: Hero( tag: data.images, child: Image.asset(data.images)),
      ),
    );
  }
}