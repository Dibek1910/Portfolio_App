import 'package:flutter/material.dart';

class FullImageScreen extends StatelessWidget {
  const FullImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Picture'),
      ),
      body: Center(
        child: Hero(
          tag: 'profile_image',
          child: Image.asset('images/1000154880.JPEG'),
        ),
      ),
    );
  }
}
