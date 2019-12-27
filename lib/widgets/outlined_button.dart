import 'package:flavr_recipes/utils/constants.dart';
import 'package:flutter/material.dart';

class OutlinedButton extends StatelessWidget {
  final String text;
  final Function onPress;

  const OutlinedButton(this.onPress, this.text);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(
        color: Constants.orangeColor,
        style: BorderStyle.solid,
        width: 2.0,
      ),
      onPressed: onPress,
      child: Text(
        'SIGN UP',
        style: TextStyle(
          color: Constants.orangeColor,
        ),
      ),
    );
  }
}
