import 'package:flavr_recipes/screens/home_screen.dart';
import 'package:flavr_recipes/screens/login_screen.dart';
import 'package:flavr_recipes/screens/onboarding_screen.dart';
import 'package:flavr_recipes/screens/signup_screen.dart';
import 'package:flavr_recipes/theme/style.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLAVR',
      theme: buildAppTheme(context),
      initialRoute: OnboardingScreen.id,
      routes: {
        OnboardingScreen.id: (BuildContext context) => OnboardingScreen(),
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        SignupScreen.id: (BuildContext context) => SignupScreen(),
        HomeScreen.id: (BuildContext context) => HomeScreen(),
      },
    );
  }
}
