import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "facebook",
            style: TextStyle(
                fontSize: 28.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                color: Colors.blue),
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xfff0f1f6),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    showSearch(
                        context: context,
                        delegate: DataSearch(context: context));
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xfff0f1f6),
                ),
                child: IconButton(
                  icon: Icon(Icons.message, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final context;
  final listRes = ["1", "2", "3", "4", "5"];
  final listSug = ["1", "2", "3"];

  DataSearch({this.context});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => Navigator.pop(context),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      // AnimatedIcon(
      //   icon: AnimatedIcons.search_ellipsis,
      //   progress: transitionAnimation,
      // ),
      onPressed: () => Navigator.pop(context),
    );
  }

  @override
  Widget buildResults(BuildContext context) {}

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty ? listSug : listRes;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.search),
        title: Text(listRes[index]),
      ),
      itemCount: suggestions.length,
    );
  }
}
