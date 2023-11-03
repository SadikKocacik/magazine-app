import 'package:flutter/material.dart';
import 'package:magazine_app/widgets/mag_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const id = "home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MagiApp'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Magazines',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Magazines',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
      body: const Column(
        children: [
          Expanded(child: MagazineCard()),
          Expanded(child: MagazineCard()),
          Expanded(child: MagazineCard()),
          Expanded(child: MagazineCard()),
        ],
      ),
    );
  }
}
