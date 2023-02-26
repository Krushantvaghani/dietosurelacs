import 'package:dietosurelabs/views/tabs/card.dart';
import 'package:dietosurelabs/views/tabs/currency.dart';
import 'package:dietosurelabs/views/tabs/home.dart';
import 'package:flutter/material.dart';
import 'package:dietosurelabs/app_config.dart';

class FinanceFullApp extends StatefulWidget {
  const FinanceFullApp({Key? key}) : super(key: key);

  @override
  State<FinanceFullApp> createState() => _FinanceFullAppState();
}

class _FinanceFullAppState extends State<FinanceFullApp> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          CardScreen(),
          CurrencyScreen(),
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: appColor.iconColor,
        selectedItemColor: appColor.primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: appScreenUtil.fontSize(12),
        unselectedFontSize: appScreenUtil.fontSize(12),
        type: BottomNavigationBarType.fixed,
        backgroundColor: appColor.bgColor,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              MdiIcons.homeOutline,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MdiIcons.cardOutline,
              size: 30,
            ),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MdiIcons.currencyUsd,
              size: 30,
            ),
            label: 'Earning',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MdiIcons.accountCircleOutline,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
