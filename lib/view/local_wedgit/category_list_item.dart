import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view_model/providers/movies_provider.dart';

List<String> categories = ["action", "romantic", "kids"];

Widget CategoryListItem({required int index, required MoviesProvider moviesProvider}) {
  return InkWell(
    onTap: () {
      moviesProvider.setCurrentCategory(categories[index]);
    },
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              "assets/${categories[index]}.jpg",
              fit: BoxFit.fill,
              height: 300,
            ),
          ),
          Container(
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
          ),
          Positioned.fill(
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    categories[index].toUpperCase(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ),
        ],
      ),
    ),
  );
}
