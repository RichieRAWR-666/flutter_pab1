import 'package:flutter/material.dart';
import 'package:flutter_pab1/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // detail header
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              candi.imageAsset,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),

          // detail content
          // detailgallery
        ],
      ),
    );
  }
}
