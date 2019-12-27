import 'package:flavr_recipes/screens/recipe_details_screen.dart';
import 'package:flavr_recipes/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<Null>(
            builder: (BuildContext context) {
              return RecipeDetailsScreen();
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 11.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Constants.lightGrayColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 370.0,
                    height: 128.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/recipe11.png'),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('HEALTHY',
                              style: Theme.of(context).textTheme.subhead),
                          SizedBox(height: 5.0),
                          Text('Pasta Salad',
                              style: Theme.of(context).textTheme.title),
                          SizedBox(height: 10.0),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.access_time,
                                      size: 20.0, color: Constants.grayColor),
                                  Padding(padding: EdgeInsets.only(right: 5.0)),
                                  Text('30 minutes'),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.list,
                                      size: 20.0, color: Constants.grayColor),
                                  Padding(padding: EdgeInsets.only(right: 5.0)),
                                  Text('Easy'),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.fastfood,
                                      size: 20.0, color: Constants.grayColor),
                                  Padding(padding: EdgeInsets.only(right: 5.0)),
                                  Text('6 people'),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
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
