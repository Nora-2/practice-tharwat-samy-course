import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practice_projects/language/language_screens/componant/componant.dart';
import 'package:practice_projects/language/language_screens/screens/colors_page.dart';
import 'package:practice_projects/language/language_screens/screens/family_members_page.dart';

import 'package:practice_projects/language/language_screens/screens/numbers_page.dart';
import 'package:practice_projects/language/language_screens/screens/phrases_page.dart';

class home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFEF6DB),
        appBar: AppBar(
          title: Text(
            "TOKUO",
            style: TextStyle(fontSize: 24, fontFamily: 'Pacifico'),
          ),
          backgroundColor: Color(0xff46322B),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                componant(
                  color: Color(0xffEF9235),
                  text1: 'Numbers',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return NumbersPage();
                        },
                      ),
                    );
                  },
                ),
                componant(
                  color: Color.fromARGB(160, 231, 133, 209),
                  text1: 'Phrases',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return PhrasesPage();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                componant(
                  color: Color.fromARGB(160, 231, 133, 209),
                  text1: 'Colors',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ColorsPage();
                        },
                      ),
                    );
                  },
                ),
                componant(
                  color: Color.fromARGB(255, 209, 143, 37),
                  text1: 'FamilyMembers',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FamilyMembersPage();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
