import 'package:dalkey_data/screens/somtel.dart';
import 'package:flutter/material.dart';

class Main_somtel extends StatelessWidget {
  // final Function() onPressed;
  // final String? title;
  // final bool isSelected;
  const Main_somtel({
    // required this.onPressed,
    // required this.title,
    // required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 110,
      height: 125,
      child: RawMaterialButton(
        onPressed: () {
          try {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SomtelScreen(),
              ),
            );
          } catch (e) {
            print(e);
          }
        },
        child: Material(
          color: Colors.yellow,
          elevation: 8,
          // borderRadius: BorderRadius.circular(28),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(28),
            bottomRight: Radius.circular(28),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            child: Column(
              children: [
                Ink.image(
                  width: 95,
                  height: 80,
                  image: AssetImage('assets/images/somtel.jpg'),
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'SOMTEL',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
