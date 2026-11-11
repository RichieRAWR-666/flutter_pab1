import 'package:flutter/material.dart';
 
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
 
  @override
  State<ProfileScreen> createState() =>
      _ProfileScreenState();
}
 
class _ProfileScreenState extends State<ProfileScreen> {
  // todo 1 variabel
  bool isSignedIn = false;
  String fullName = 'Nathaniel Richie';
  String userName = 'chieboo';
  int favoriteCandiCount = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
    children: [
      Container(
        height: 200,
        width: double.infinity,
        color: Colors.deepPurple,
      ),
      Column(
        children: [
          // todo 2 profile Header
          Align(
            alignment: AlignmentGeometry.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top : 200-50),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
              Container(
                decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple, width: 2),
                shape: BoxShape.circle,
              ),
                child: const CircleAvatar(
                radius: 50,
                backgroundImage:
                AssetImage('images/placeholder_image.png'),
              ),
                      ),
                      if (isSignedIn)
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt,
                color: Colors.deepPurple[50]),
                      ),
                    ],
                  ),
            ),
          ),
          //todo 3 profile Info
          Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/ 3,
              child: const Row(children: [
            Icon(Icons.lock, color: Colors.amber),
            SizedBox(width: 8),
            Text('Pengguna', style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold)),
          ]),
        ),
        Expanded(
          child: Text(': $userName',
          style: const TextStyle(fontSize: 18)),
      ),
    ]),
      SizedBox(height: 4,),
      Divider(color: Colors.deepPurple,),
      Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/ 3,
              child: const Row(children: [
            Icon(Icons.person, color: Colors.blue),
            SizedBox(width: 8),
            Text('Nama', style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold)),
          ]),
        ),
        Expanded(
          child: Text(': $fullName',
          style: const TextStyle(fontSize: 18)),
      ),
        if (isSignedIn) const Icon(Icons.edit), 
    ]),
    SizedBox(height: 4,),
      Divider(color: Colors.deepPurple,),
      Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/ 3,
              child: const Row(children: [
            Icon(Icons.favorite, color: Colors.red),
            SizedBox(width: 8),
            Text('Favorit', style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold)),
          ]),
        ),
        Expanded(
          child: Text(': $favoriteCandiCount',
          style: const TextStyle(fontSize: 18)),
      ),
    ]),
        SizedBox(height: 4,),
        isSignedIn
        ? TextButton(onPressed: () {}, child: const Text('Sign Out'))
        : TextButton(onPressed: () {}, child: const Text('Sign In')),

          //todo 4 profile action 
        ],
      ),
    ],
    ),
    );
  }
}