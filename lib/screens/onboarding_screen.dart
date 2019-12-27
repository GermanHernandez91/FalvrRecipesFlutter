import 'package:flavr_recipes/screens/login_screen.dart';
import 'package:flavr_recipes/screens/signup_screen.dart';
import 'package:flavr_recipes/widgets/button.dart';
import 'package:flavr_recipes/widgets/outlined_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  static final String id = 'onboarding_screen';

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 250.0, left: 20.0, right: 20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('FLAVR', style: Theme.of(context).textTheme.headline),
              SizedBox(height: 150.0),
              Button(
                  () => Navigator.pushNamed(context, LoginScreen.id), 'LOG IN'),
              SizedBox(height: 30.0),
              Text("Don't have an account?"),
              SizedBox(height: 30.0),
              OutlinedButton(
                  () => Navigator.pushNamed(context, SignupScreen.id),
                  'SIGN UP'),
            ],
          ),
        ),
      ),
    );
  }
}
