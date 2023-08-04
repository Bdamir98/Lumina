import 'package:flutter/material.dart';

Text RegularTitle(String regularTitle) {
    return Text(
      regularTitle,
      style: TextStyle(
          fontFamily: 'GothamMedium', fontSize: 13, color: Colors.black),
    );
  }
Text TitleText(String regularTitle) {
    return Text(
      regularTitle,
      style: TextStyle(
          fontFamily: 'GothamMedium', fontSize: 15, color: Colors.black),
    );
  }
Text SubTitleText(String regularTitle) {
    return Text(
      regularTitle,
      style: TextStyle(
          fontFamily: 'GothamRegular', fontSize: 13, color: Colors.black),
    );
  }