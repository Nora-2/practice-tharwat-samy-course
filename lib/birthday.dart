import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFD2BCD5),
      
      body: Center(
        child: Image(
          fit:BoxFit.fill ,
            image:AssetImage('images/birth.png')
                ),
      ),
    );
  }
}
