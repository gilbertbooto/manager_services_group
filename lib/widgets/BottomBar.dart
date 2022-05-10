import 'package:flutter/material.dart';
import 'package:managerservices/widgets/BottomBarColumn.dart';
import 'package:managerservices/widgets/InfoText.dart';
import 'package:managerservices/widgets/ResponsiveWidget.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Theme.of(context).bottomAppBarColor,
      child: ResponsiveWidget.isSmallScreen(context) // pour petit ecran
          ? SingleChildScrollView(
              // scrollDirection: Axis.horizontal,

              child: Column(
                children: [
                  Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomBarColumn(
                        heading: 'A propos',
                        s1: 'Nous contacter',
                        s2: 'Qui sonnes-nous',
                        s3: 'Carrière professionnelle',
                        s4: 'Loisirs',
                      ),
                      BottomBarColumn(
                        heading: 'Aide',
                        s1: 'Payement',
                        s2: 'Contrats',
                        s3: 'Guide',
                        s4: 'FAQ',
                      ),
                      // BottomBarColumn(
                      //   heading: 'Reseaux Sociaux',
                      //   s1: 'Twitter',
                      //   s2: 'Facebook',
                      //   s3: 'YouTube',
                      //   s4: 'in',
                      // ),
                    ],
                  ),
                  Container(
                    color: Colors.blueGrey,
                    width: double.maxFinite,
                    height: 1,
                  ),
                  SizedBox(height: 20),
                  InfoText(
                    type: 'Email',
                    text: 'contact@managerservices.com',
                    //text: 'contacts@managerservices-ms.com',
                  ),
                  SizedBox(height: 5),
                  InfoText(
                    type: 'Address',
                    text:
                        'Galeries presidentielles 6è niveau local C; Republique Démocratique du Congo',
                  ),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.blueGrey,
                    width: double.maxFinite,
                    height: 1,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Copyright © 2021 | Manager Services',
                    style: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )
          : Column(
              // pour grand ecran
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'A propos',
                      s1: 'Nous contacter',
                      s2: 'A propos de nous',
                      s3: 'Carrière professionnelle',
                      s4: 'Loisirs',
                    ),
                    BottomBarColumn(
                      heading: 'Aide',
                      s1: 'Payement',
                      s2: 'Contrats',
                      s3: 'FAQ',
                      s4: 'grandSreen',
                    ),
                    BottomBarColumn(
                      heading: 'Reseaux Sociaux',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                      s4: 'in',
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'contacts@managerservices.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text:
                              '01, Rue : Banalia, Q/Lubumbashi, C/Kasa-Vubu-Kinshasa; RDC',
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blueGrey,
                    width: double.maxFinite,
                    height: 1,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2021 | Manager Services',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
