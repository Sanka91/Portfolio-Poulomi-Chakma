import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/presentation/index_presentation.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(100, 100, 100, 16),
      child: SizedBox(
        height: 800,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage("web/assets/images/Flyer.png"),
                  )),
              SizedBox(
                width: 50,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    width: 20,
                    color: Color(0xFFA44848),
                  ),
                ),
                elevation: 20,
                shadowColor: Colors.black,
                child: Container(
                  height: 800,
                  width: 600,
                  color: Color(0xFFFFFAF3),
                  child: Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          width: 2,
                          color: Color(0xFFD16975),
                        ),
                      ),
                      child: Container(
                        height: 675,
                        width: 530,
                        child: _buildContent(),
                        color: Color(0xFFFFFAF3),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildContent() {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 15, bottom: 15),
      child: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: Container(),
          ),
          _buildMains(),
          SizedBox(
            height: 30,
          ),
          //Divider(height: 1, color: Color(0xFFD16975) ,),
          _buildSides(),
          SizedBox(
            height: 30,
          ),
          //Divider(height: 1, color: Color(0xFFD16975) ,),
          _buildDesserts(),
          Expanded(
            child: Container(),
          ),
          SizedBox(
            height: 30,
          ),
          _buildFooter()
        ],
      ),
    );
  }

  DefaultTextStyle _buildHeader() {
    return DefaultTextStyle(
      style: TextStyle(color: Color(0xFFD16975), fontFamily: "Agbalumo"),
      child: Column(
        children: [
          Text(
            "POULOMI'S  KITCHEN",
            style: TextStyle(fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, color: Color(0xFFD16975)),
              Text(
                "Whatsapp: 0151 - 234 824 15",
                style: TextStyle(
                  fontSize: 20,
                ),
                strutStyle: StrutStyle(
                  forceStrutHeight: true,
                  height: 1.5,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  DefaultTextStyle _buildMains() {
    return DefaultTextStyle(
      style: TextStyle(
        color: Color(0xFFD16975),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "MAINS",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, letterSpacing: 2),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chicken curry (gf)",
                    style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 2, fontSize: 12),
                  ),
                  Text(
                    "Bengali style succulent boneless chicken curry with chunky potatoes",
                    style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
                    strutStyle: StrutStyle(
                      forceStrutHeight: true,
                      height: 1.3,
                    ),
                  )
                ],
              ),
              Text(
                "€ 30,-",
                style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lamb biryani (gf)",
                    style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 2, fontSize: 12),
                  ),
                  Text(
                    "Biryani the Bengali way",
                    style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
                    strutStyle: StrutStyle(
                      forceStrutHeight: true,
                      height: 1.3,
                    ),
                  )
                ],
              ),
              Text(
                "€ 20,-",
                style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Egg curry (vg/gf)",
                    style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 2, fontSize: 12),
                  ),
                  Text(
                    "Twice cooked eggs in a succulent tomato sauce",
                    style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
                    strutStyle: StrutStyle(
                      forceStrutHeight: true,
                      height: 1.3,
                    ),
                  )
                ],
              ),
              Text(
                "€ 15,-",
                style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }

  DefaultTextStyle _buildSides() {
    return DefaultTextStyle(
      style: TextStyle(
        color: Color(0xFFD16975),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "SIDES",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, letterSpacing: 2),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yellow daal Bengali style (vg/gf)",
                    style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 2, fontSize: 12),
                  ),
                  Text(
                    "The perfect accompaniment for any curry and bhaji",
                    style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
                    strutStyle: StrutStyle(
                      forceStrutHeight: true,
                      height: 1.3,
                    ),
                  )
                ],
              ),
              Text(
                "€ 25,-",
                style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Polao (vg/gf)",
                    style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 2, fontSize: 12),
                  ),
                  Text(
                    "Fragrant rice pilaf made with Kalijeera rice",
                    style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
                    strutStyle: StrutStyle(
                      forceStrutHeight: true,
                      height: 1.3,
                    ),
                  )
                ],
              ),
              Text(
                "€ 20,-",
                style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Aloor chop (vg)",
                    style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 2, fontSize: 12),
                  ),
                  Text(
                    "Crispy potato cakes usually goes with biryani",
                    style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
                    strutStyle: StrutStyle(
                      forceStrutHeight: true,
                      height: 1.3,
                    ),
                  )
                ],
              ),
              Text(
                "€ 10,-",
                style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }

  DefaultTextStyle _buildDesserts() {
    return DefaultTextStyle(
      style: TextStyle(
        color: Color(0xFFD16975),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "DESSERTS",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, letterSpacing: 2),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mishti doi",
                    style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 2, fontSize: 12),
                  ),
                  Text(
                    "Sweet caramel yogurt",
                    style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
                    strutStyle: StrutStyle(
                      forceStrutHeight: true,
                      height: 1.3,
                    ),
                  )
                ],
              ),
              Text(
                "€ 10,-",
                style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1.5, fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }

  DefaultTextStyle _buildFooter() {
    return DefaultTextStyle(
        style: TextStyle(
          color: Color(0xFFD16975),
          fontWeight: FontWeight.w700,
          letterSpacing: 2,
          fontSize: 10,
        ),
        child: Text(
          "Alle Gerichte sind für 2 Personen \n"
          "Die Hauptgerichte werden ohne Reis oder Brot serviert \n"
          "Bitte schreibt mir direkt, um Eure Bestellungen abzugeben. Für eine Lieferung am Sonntag brauche ich bis spätestens Mittwoch Eure Bestellung",
          textAlign: TextAlign.center,
        ));
  }
}
