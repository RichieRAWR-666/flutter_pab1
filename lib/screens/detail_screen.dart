import 'package:flutter/material.dart';
import 'package:flutter_pab1/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // detail header
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      candi.imageAsset,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 32,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100]?.withValues(alpha: 0.7),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ],
            ),
            // detail Info
            Column(
              children: [
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candi.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.place, color: Colors.red),
                const SizedBox(width: 8),
                const SizedBox(
                  width: 70,
                  child: Text(
                    'Lokasi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(": ${candi.location}"),
              ],
            ),
            // detailgallery
            Row(
              children: [
                Icon(Icons.calendar_month, color: Colors.blue),
                SizedBox(width: 8),
                Text('Dibangun'),
                SizedBox(width: 8),
                Text(': ${candi.built}'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.house, color: Colors.green),
                SizedBox(width: 8),
                Text('Tipe'),
                SizedBox(width: 8),
                Text(': ${candi.type}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
