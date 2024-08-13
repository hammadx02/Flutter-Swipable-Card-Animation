import 'package:flutter/material.dart';

import '../Declarations/Constants/constants.dart';

AppBar buildAppBar({
  required String appBarTitle,
  bool? centerTitle,
  List<Widget>? actionWidgets,
}) =>
    AppBar(
      title: Text(
        appBarTitle,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: centerTitle ?? true,
      elevation: 0,
      backgroundColor: primaryColor,
      actions: actionWidgets ?? [],
    );
