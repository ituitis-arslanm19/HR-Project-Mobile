import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile/core/theme/app_theme.dart';
import 'package:mobile/screen/view/qr_view.dart';
import 'package:mobile/screen/viewModel/main_view_model.dart';

class MainView extends StatelessWidget {
  MainView({super.key});
  MainViewModel mainViewModel = MainViewModel();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(body: Observer(builder: (context) {
      switch (mainViewModel.bnbIndex) {
        case 0:
          return QrView();

        case 1:
          return Text("Profile");

        case 2:
          return Text("History");

        default:
          return QrView();
      }
    }), bottomNavigationBar: Observer(builder: (context) {
      return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        currentIndex: mainViewModel.bnbIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped,
      );
    })));
  }

  void _onItemTapped(int index) {
    if (index != mainViewModel.bnbIndex) mainViewModel.setBnbIndex(index);
  }
}
