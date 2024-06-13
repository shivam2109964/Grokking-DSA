import 'package:flutter/material.dart';
import 'package:grokking_dsa/View-Model/bottomNavBloc/bottom_nav_bloc.dart';

// ignore: must_be_immutable
class BottombarNav extends StatelessWidget {
  int currentIndex;
  BottomNavBloc bottomNavBloc;
  BottombarNav(
      {super.key, required this.currentIndex, required this.bottomNavBloc});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) {
        bottomNavBloc.add(BottomNavEvent.values[value]);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.adobe),
          label: 'Pending...',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
