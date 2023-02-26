import 'package:dietosurelabs/global/theme/index.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.bgColor,
      appBar: AppBar(
        backgroundColor: appColor.bgColor,
        title: Text(
          "Card page",
          style: appCss.h3.copyWith(color: appColor.textPrimaryColor),
        ),
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
