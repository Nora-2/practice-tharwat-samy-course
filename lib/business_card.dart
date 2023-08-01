import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 500,
          decoration: BoxDecoration(
             color: Color.fromARGB(210, 238, 189, 42),
            image: DecorationImage(image: AssetImage('images/download (1).jpeg',),fit: BoxFit.cover ,opacity: .7),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 99,
                child: ClipOval(
                    child: Image.asset(
                  'images/WhatsApp Image 2023-02-24 at 11.59.05.jpg',
                  fit: BoxFit.fill,
                  width: 195,
                  height: 195,
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Nora Mohamed',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontSize: 32,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Color(0xFF6C8090),
                  fontSize: 22,
                ),
              ),
              Divider(
                color: Color(0xFF6C8090),
                thickness: 1,
                indent: 60,
                endIndent: 60,
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: const Color(0xFF2B475E),
                  ),
                  title: Text(
                    '(+20)1026076471',
                    style: TextStyle(
                      color: const Color(0xFF2B475E),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: const Color(0xFF2B475E),
                  ),
                  title: Text(
                    'Nora123@gmail.com',
                    style: TextStyle(
                      color: const Color(0xFF2B475E),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
