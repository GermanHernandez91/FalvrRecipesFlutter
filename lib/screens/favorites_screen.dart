import 'package:flavr_recipes/screens/search_screen.dart';
import 'package:flavr_recipes/utils/constants.dart';
import 'package:flavr_recipes/widgets/recipe_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: <Widget>[
          RecipeCard(),
          RecipeCard(),
          RecipeCard(),
          RecipeCard(),
          RecipeCard(),
          RecipeCard(),
          RecipeCard(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'FAVORITES',
        style: Theme.of(context).textTheme.caption,
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                CupertinoPageRoute<Null>(
                  builder: (BuildContext context) {
                    return SearchScreen();
                  },
                  fullscreenDialog: true,
                ));
          },
          icon: Icon(
            Icons.search,
            size: 32.0,
            color: Constants.blackColor,
          ),
        ),
      ],
    );
  }
}
