import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_movies_app/strings.dart';
import 'package:the_movies_app/view_model/providers/movies_provider.dart';
import '../utils.dart';
import 'local_wedgit/category_list_item.dart';

class MoviesCategories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _moviesProvider = Provider.of<MoviesProvider?>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black12,
      home: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            backgroundColor: Colors.purple,
            elevation: 0,
            title: Text(AppStrings.movies_categories),
          ),
          body: SafeArea(
              child: Container(
                  color: Utils.light_gray,
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10.0),
                    shrinkWrap: false,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return CategoryListItem(moviesProvider: _moviesProvider!, index: index);
                    },
                  ))),
          ),
    );
  }

}