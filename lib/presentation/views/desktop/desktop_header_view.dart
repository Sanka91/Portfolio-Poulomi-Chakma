import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/presentation/index_presentation.dart';

class DesktopHeaderView extends StatelessWidget {
  const DesktopHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(100, 100, 100, 16),
        child: SizedBox(
          height: 300,
          child: Card(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ClipRRect(
                  //     borderRadius: BorderRadius.circular(30),
                  //     child: Image(
                  //       fit: BoxFit.fill,
                  //       image: AssetImage("web/assets/images/A7C02537.jpg"),
                  //     )),
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                    child: Column(
                      children: [
                        Text(
                          "Hi there, I'm Poulomi",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                      ],
                    ),
                  ),
                  // AppBarButton("01. ", "About"),
                  // AppBarButton("02. ", "Experiences"),
                  // AppBarButton("03. ", "Showcase"),
                  // AppBarButton("04. ", "Contact"),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 8),
                  //   child: FaIcon(FontAwesomeIcons.linkedinIn),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 8),
                  //   child: FaIcon(FontAwesomeIcons.facebook),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 8),
                  //   child: FaIcon(FontAwesomeIcons.instagram),
                  // )
                ],
              ),
            ),
          ),
        ));
  }
}
