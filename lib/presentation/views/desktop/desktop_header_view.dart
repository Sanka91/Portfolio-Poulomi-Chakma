import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/presentation/index_presentation.dart';

class DesktopHeaderView extends StatelessWidget {
  const DesktopHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(100, 100, 100, 16),
        child: Container(
          height: 500,
          child: Card(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "Hi there, \n"
                          "I'm Poulomi",
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "IndieFlower", fontSize: 35),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                AppBarButton("01. ", "About"),
                                AppBarButton("02. ", "Experiences"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppBarButton("03. ", "Showcase"),
                                AppBarButton("04. ", "Contact"),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: FaIcon(FontAwesomeIcons.linkedinIn),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: FaIcon(FontAwesomeIcons.facebook),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: FaIcon(FontAwesomeIcons.instagram),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "I am passionate about design \n"
                            "I love to create \n"
                            "I help make the planet a better place \n"
                            "a;sldkfja;sdlfhasdhfasuddfhasldfasnfadsf",
                            style: TextStyle(fontFamily: "Quicksand", fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          ResumeButton(),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 100,
                            child: Lottie.network("https://assets5.lottiefiles.com/packages/lf20_64okjrr7.json"),
                          ),
                           const Text("Date and Time"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
