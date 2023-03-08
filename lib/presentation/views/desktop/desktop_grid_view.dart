import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DesktopGridView extends StatelessWidget {
  const DesktopGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build ran");
    return Padding(
      padding: const EdgeInsets.fromLTRB(100, 100, 100, 16),
      child: StaggeredGrid.count(crossAxisCount: 12, children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 3,
          mainAxisCellCount: 4,
          child: Card(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage("web/assets/images/Flower 1.jpg"),
                      ),
                    ),
                  ),
                  Chip(
                      label: Text("Oil on Canvas"),
                      backgroundColor: Colors.grey),
                  Text(
                    "Hello there",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          // child: Card(child: FlutterLogo()),
        ),
      ]),
    );
  }
}
