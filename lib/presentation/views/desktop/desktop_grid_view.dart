import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DesktopGridView extends StatelessWidget {
  DesktopGridView({Key? key}) : super(key: key);

  final List tester = [
    "Dal_Tadka",
    "Eggcurry",
    "Friedbananas",
    "Friedpomfret",
    "Fuchka",
    "Kichuri",
    "Korma",
    "Momo",
    "Palakpaneer",
    "Prawncurry"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(100, 100, 100, 16),
        child: MasonryGridView.count(
          itemCount: tester.length,
          crossAxisCount: 6,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          itemBuilder: (context, index) {
            var random = Random().nextInt(20) + 40.toDouble();

            return Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              shadowColor: Colors.black,
              elevation: 20,
              color: Theme.of(context).colorScheme.secondaryContainer,
              //surfaceTintColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8),
                //padding: EdgeInsets.only(top: Random().nextInt(20) + 40.toDouble(), left: random , right: random),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage("web/assets/images/${tester[index]}.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${tester[index]}",
                            style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer, fontSize: 25, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "I made this at home with my hubby husband big P...",
                            style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
