import 'package:flavr_recipes/screens/home_screen.dart';
import 'package:flavr_recipes/widgets/back_icon.dart';
import 'package:flavr_recipes/widgets/button.dart';
import 'package:flavr_recipes/widgets/input.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static final String id = 'signup_screen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password, _name;

  _onSubmit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      Navigator.pushReplacementNamed(context, HomeScreen.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  BackIcon(onTap: () => Navigator.pop(context)),
                ],
              ),
              SizedBox(height: 100.0),
              Column(
                children: <Widget>[
                  Text('SIGN UP', style: Theme.of(context).textTheme.headline),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text('Nice to meet you',
                      style: Theme.of(context).textTheme.body1),
                  SizedBox(height: 100.0),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Input(
                          onSaved: (String input) => this._name = input,
                          onValidation: (String input) => input.trim().isEmpty
                              ? 'Please, enter a valid name'
                              : null,
                          placeholder: 'Your Name',
                          keyboardType: TextInputType.text,
                          isObscured: false,
                        ),
                        SizedBox(height: 20.0),
                        Input(
                          onSaved: (String input) => this._email = input,
                          onValidation: (String input) => !input.contains('@')
                              ? 'Please, enter a valid email'
                              : null,
                          placeholder: 'Your Email',
                          keyboardType: TextInputType.emailAddress,
                          isObscured: false,
                        ),
                        SizedBox(height: 20.0),
                        Input(
                          onSaved: (String input) => _password = input,
                          onValidation: (String input) => input.length < 6
                              ? 'Password must be at least 6 characters'
                              : null,
                          placeholder: 'Password',
                          keyboardType: TextInputType.text,
                          isObscured: true,
                        ),
                        SizedBox(height: 40.0),
                        Button(_onSubmit, 'SIGN UP'),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
