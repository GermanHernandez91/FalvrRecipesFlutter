import 'package:flavr_recipes/screens/search_screen.dart';
import 'package:flavr_recipes/utils/constants.dart';
import 'package:flavr_recipes/widgets/category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: <Widget>[
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
          CategoryCard(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'CATEGORIES',
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
