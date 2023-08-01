import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
class componant extends StatelessWidget {
  String text1;
  VoidCallback onTap;
  Color color;
  componant({required this.text1,required this.onTap,required this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.only(left: 24),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Color(0xff46322B),
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(20),
                bottomEnd: Radius.circular(20),
              )),
          child: Center(
              child: Text(
            '$text1',
            style:
                TextStyle(color: color, fontFamily: 'Pacifico', fontSize: 24),
          ))),
    );
  }
}
class itemlist extends StatelessWidget {
  const itemlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}