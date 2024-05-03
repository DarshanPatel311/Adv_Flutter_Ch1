import 'package:flutter/material.dart';

import 'components/hidde_photo.dart';
import 'components/titel_row.dart';



class HiddenScreen extends StatelessWidget {
  const HiddenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hidden Photos',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Title ROW
              TitleRow(),
              //GRID VIEW
              HiddenPhotoGridView(itemCount: 20, album: 'hidden1',),

              // Title ROW
              TitleRow(),
              //GRID VIEW
              HiddenPhotoGridView(itemCount: 15, album: 'hidden2',)
            ],
          ),
        ),
      ),
    );
  }
}