import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grokking_dsa/Model/AppTitle/appTitle.dart';
import 'package:grokking_dsa/View-Model/bottomNavBloc/bottom_nav_bloc.dart';
import 'package:grokking_dsa/View/BottomBar/bottomBarNav.dart';
import 'package:grokking_dsa/View/Home/HomeElement/HomeContainer.dart';
import 'package:grokking_dsa/View/Home/HomeElement/HomeContainer2.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavBloc bottomNavBloc = BlocProvider.of<BottomNavBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: AppTitle(),
      ),
      body: BlocBuilder<BottomNavBloc, int>(
        builder: (context, currentIndex) {
          switch (currentIndex) {
            case 0:
              return const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [LinearDataStruct(), NonLinearDataStruct()],
                ),
              );
            case 1:
              return const Text("Pending...");
            case 2:
              return const Text("Profile");
          }
          return Container();
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavBloc, int>(
        builder: (context, currentIndex) {
          return BottombarNav(
            currentIndex: currentIndex,
            bottomNavBloc: bottomNavBloc,
          );
        },
      ),
    );
  }
}
