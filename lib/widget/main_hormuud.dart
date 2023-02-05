import 'package:dalkey_data/screens/hormuud.dart';
import 'package:flutter/material.dart';

class Main_hormuud extends StatelessWidget {
  // final Function() onPressed;
  // final String? title;
  // final bool isSelected;
  const Main_hormuud({
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
                builder: (_) => HormuudScreen(),
              ),
            );
          } catch (e) {
            print(e);
          }
        },
        child: Material(
          color: Color.fromARGB(216, 6, 126, 10),
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
                  image: AssetImage('assets/images/hormuud.jpg'),
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'HORMUUD',
                  style: TextStyle(
                    color: Colors.white,
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
