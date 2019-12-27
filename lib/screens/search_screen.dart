import 'package:flavr_recipes/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static final String id = 'search_screen';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            border: InputBorder.none,
            hintText: 'Search here',
            hintStyle: Theme.of(context).textTheme.title,
            prefixIcon: Icon(Icons.search, size: 30.0),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () => print("clear"),
            ),
          ),
        ),
      ),
    );
  }
}
