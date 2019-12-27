import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  final Function onTap;

  const BackIcon({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset('assets/icons/ic_arrow_back.png'),
    );
  }
}
