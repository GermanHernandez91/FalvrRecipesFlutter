import 'package:flavr_recipes/utils/constants.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final Function onSaved;
  final Function onValidation;
  final String placeholder;
  final TextInputType keyboardType;
  final bool isObscured;

  const Input({
    this.onSaved,
    this.onValidation,
    this.placeholder,
    this.keyboardType,
    this.isObscured,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.isObscured,
      decoration: InputDecoration(
        hintText: this.placeholder,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.0),
          borderSide: BorderSide(
            width: 1.0,
            color: Constants.lightGrayColor,
            style: BorderStyle.solid,
          ),
        ),
        filled: true,
        hintStyle: Theme.of(context).textTheme.body1,
        fillColor: Colors.white,
      ),
      validator: this.onValidation,
      onSaved: this.onSaved,
    );
  }
}
