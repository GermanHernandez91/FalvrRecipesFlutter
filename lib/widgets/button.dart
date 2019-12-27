import 'package:flavr_recipes/utils/constants.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onPress;

  const Button(this.onPress, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      width: 344.0,
      decoration: BoxDecoration(
        color: Constants.orangeColor,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: FlatButton(
        onPressed: onPress,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
