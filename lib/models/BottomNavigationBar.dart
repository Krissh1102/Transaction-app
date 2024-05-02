import 'package:assignment3/src/ChatScreen/ChatPageScreen.dart';
import 'package:assignment3/src/HomeScreen.dart';

import 'package:assignment3/src/Profile/ProfileScreen.dart';

import 'package:assignment3/src/TransactionScreen/TransactionScreen.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _screens = [
    HomeScreen(),
    TransactionScreen(),
    ChatPageScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
              indicatorColor: Color.fromARGB(91, 158, 158, 158)),
          child: NavigationBar(
            height: 60,
            animationDuration: const Duration(seconds: 1),
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (value) =>
                setState(() => _selectedIndex = value),
            destinations: [
              const NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  label: '',
                  selectedIcon:
                      ImageIcon(AssetImage('assets/images/Home.png'))),
              const NavigationDestination(
                  icon: ImageIcon(AssetImage('assets/images/Message.png')),
                  label: '',
                  selectedIcon:
                      ImageIcon(AssetImage('assets/images/Message (2).png'))),
              const NavigationDestination(
                  icon: ImageIcon(AssetImage('assets/images/Chart.png')),
                  label: '',
                  selectedIcon:
                      ImageIcon(AssetImage('assets/images/Chart (3).png'))),
              NavigationDestination(
                icon: Image.asset('assets/images/avatar.png'),
                label: '',
              )
            ],
          ),
        ));
  }
}
