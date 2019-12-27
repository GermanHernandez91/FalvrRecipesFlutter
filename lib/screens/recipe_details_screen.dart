import 'package:flavr_recipes/screens/search_screen.dart';
import 'package:flavr_recipes/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeDetailsScreen extends StatefulWidget {
  @override
  _RecipeDetailsScreenState createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Text('SALAD', style: Theme.of(context).textTheme.body2),
                      SizedBox(height: 15.0),
                      Text('Pasta Salad',
                          style: Theme.of(context).textTheme.caption),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.access_time,
                                  color: Constants.grayColor),
                              Padding(padding: EdgeInsets.only(right: 5.0)),
                              Text('30 minutes',
                                  style: Theme.of(context).textTheme.body2),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.list, color: Constants.grayColor),
                              Padding(padding: EdgeInsets.only(right: 5.0)),
                              Text('Easy',
                                  style: Theme.of(context).textTheme.body2),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.fastfood, color: Constants.grayColor),
                              Padding(padding: EdgeInsets.only(right: 5.0)),
                              Text('6 people',
                                  style: Theme.of(context).textTheme.body2),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.0),
                Text('INGREDIENTS', style: Theme.of(context).textTheme.title),
                Container(
                  height: 300,
                  color: Colors.red,
                ),
                SizedBox(height: 40.0),
                Text('INSTRUCTIONS', style: Theme.of(context).textTheme.title),
                Container(
                  height: 300,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(192.0),
      child: AppBar(
        elevation: 2,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Opacity(
          opacity: 0.8,
          child: Image(
            image: AssetImage('assets/images/recipe1.png'),
            fit: BoxFit.cover,
          ),
        ),
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
                ),
              );
            },
            icon: Icon(
              Icons.search,
              size: 32.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
