import 'package:flavr_recipes/screens/search_screen.dart';
import 'package:flavr_recipes/utils/constants.dart';
import 'package:flavr_recipes/widgets/recipe_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipesScreen extends StatefulWidget {
  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('FEATURED RECIPES',
                      style: Theme.of(context).textTheme.title)
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 120.0,
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildRecipe(),
                  _buildRecipe(),
                  _buildRecipe(),
                  _buildRecipe(),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('LATEST', style: Theme.of(context).textTheme.title)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 430.0,
              alignment: Alignment.center,
              child: ListView(
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
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRecipe() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: 208.0,
        height: 128.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/recipe1.png'),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }

  Widget _buildRecipeLatests() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Container(
        width: 344.0,
        height: 232.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/recipe11.png'),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'FLAVR',
        style: Theme.of(context).textTheme.caption,
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.notifications,
          size: 32.0,
          color: Constants.blackColor,
        ),
        onPressed: () {},
      ),
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
