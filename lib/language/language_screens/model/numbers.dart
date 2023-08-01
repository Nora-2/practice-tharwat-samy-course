import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Number {
  final String imge;
  final String jpName;
  final String engName;
  final String sound;

  const Number(
      {required this.imge,
      required this.jpName,
      required this.engName,
      required this.sound});
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color, required String itemType,
  });
  final Number item;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
     
          Container(color:  Color(0xffFFF6DC), child: Image.asset(item.imge)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  item.engName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/numbers/');
                player.load(item.sound);
                // player.play(item.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
