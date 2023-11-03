import 'package:flutter/material.dart';

class MagazineCard extends StatefulWidget {
  const MagazineCard({super.key});

  @override
  State<MagazineCard> createState() => _MagazineCardState();
}

class _MagazineCardState extends State<MagazineCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'images/fair.jpg',
          ),
          Column(
            children: [
              Text('Sanat'),
              Text('March 2023'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star),
              Text('\$2.99'),
            ],
          ),
        ],
      ),
    );
  }
}


// Column(
//         children: [
//           ListTile(
//             title: Text('Sanat'),
//             subtitle: Text('March 2023'),
//             leading: Image.asset(
//               'images/fair.jpg',
//               fit: BoxFit.fill,
//               height: 300,
//             ),
//             trailing: const Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Icon(Icons.star),
//                 Text('\$2.99'),
//               ],
//             ),
//           ),
//           const Divider(),
//         ],
//       ),