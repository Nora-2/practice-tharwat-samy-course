import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class score extends StatefulWidget {
  @override
  State<score> createState() => _scoreState();
}

class _scoreState extends State<score> {
  @override
  int PointsOfTeamA = 0;
  int PointsOfTeamB = 0;
  Widget build(BuildContext context) {
    return 
      Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('CALC_SCORE',style: TextStyle(color: Colors.black),),
          backgroundColor: Color.fromARGB(255, 220, 188, 204),
          elevation: .9,
        ),
        body: Container( decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/download (3).jpeg',),fit: BoxFit.cover)),
      
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('TEAM A',style: TextStyle(fontFamily: 'Pacifico',fontSize: 40,color: Colors.black),),
                      Text('$PointsOfTeamA',style: TextStyle(fontSize: 80,color: Colors.white),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 220, 188, 204),
                          minimumSize: Size(10, 50),
                          shadowColor: Color.fromARGB(170, 255, 193, 7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            PointsOfTeamA += 1;
                          });
                        },
                        child: Text('Add 1 point'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 220, 188, 204),
                          minimumSize: Size(10, 50),
                          shadowColor: Color.fromARGB(170, 255, 193, 7),
                         shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            PointsOfTeamA += 2;
                          });
                        },
                        child: Text('Add 2 points'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 220, 188, 204),
                          minimumSize: Size(10, 50),
                          shadowColor: Color.fromARGB(170, 255, 193, 7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            PointsOfTeamA += 3;
                          });
                        },
                        child: Text('Add 3 points'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('TEAM B',style: TextStyle(fontFamily: 'Pacifico',fontSize: 40,color: Colors.black),),
                      Text('$PointsOfTeamB',style: TextStyle(fontSize: 80,color: Colors.white),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 220, 188, 204),
                          minimumSize: Size(10, 50),
                          shadowColor: Color.fromARGB(170, 255, 193, 7),
                         shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            PointsOfTeamB += 1;
                          });
                        },
                        child: Text('Add 1 point'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 220, 188, 204),
                          minimumSize: Size(10, 50),
                          shadowColor: Color.fromARGB(170, 255, 193, 7),
                       shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            PointsOfTeamB += 2;
                          });
                        },
                        child: Text('Add 2 points'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 220, 188, 204),
                          minimumSize: Size(10, 50),
                          shadowColor: Color.fromARGB(170, 255, 193, 7),
                         shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            PointsOfTeamB += 3;
                          });
                        },
                        child: Text('Add 3 points'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {setState(() {
                          PointsOfTeamA =0;
                          PointsOfTeamB =0;
                        });},
              child: Text('Reset'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: Size(80, 50),
                shadowColor: Color.fromARGB(170, 255, 193, 7),
               shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
              ),
            )
          ]),
        ),
    
    );
  }
}
