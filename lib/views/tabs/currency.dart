import 'package:dietosurelabs/global/theme/index.dart';
import 'package:flutter/material.dart';

class CurrencyScreen extends StatefulWidget {
  const CurrencyScreen({Key? key}) : super(key: key);

  @override
  State<CurrencyScreen> createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.bgColor,
      appBar: AppBar(
        backgroundColor: appColor.bgColor,
        title: Text(
          "Currency page",
          style: appCss.h3.copyWith(color: appColor.textPrimaryColor),
        ),
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
