import 'package:flavr_recipes/screens/categories_screen.dart';
import 'package:flavr_recipes/screens/favorites_screen.dart';
import 'package:flavr_recipes/screens/recipes_screen.dart';
import 'package:flavr_recipes/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    RecipesScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    FavoritesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
          border: null,
          boxShadow: [
            BoxShadow(
              color: Constants.blackColor,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(10.0, 10.0),
            ),
          ],
        ),
        child: CupertinoTabBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          activeColor: Constants.orangeColor,
          inactiveColor: Constants.grayColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
