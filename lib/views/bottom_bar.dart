import 'package:flutter/material.dart';
import 'package:roziroti_assignment/views/account_screen.dart';
import 'package:roziroti_assignment/views/profile_screen.dart';

class BottomBar extends StatefulWidget {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currIndex = 0;

  final List<Widget> pages = [
    const ProfileScreen(),
    const Center(child: Text('1')),
    const Center(child: Text('1')),
    const Center(child: Text('1')),
    const AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_currIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currIndex,
          unselectedLabelStyle:
              const TextStyle(color: Colors.grey, fontSize: 10),
          selectedLabelStyle:
              const TextStyle(color: Colors.black, fontSize: 10),
          onTap: (value) {
            setState(() {
              _currIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Orders'),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ));
  }
}
