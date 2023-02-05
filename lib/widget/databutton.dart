import 'package:flutter/material.dart';

class Databutton extends StatefulWidget {
  final Function() onPressed;
  final String? money;
  final String? data;
  final Color color;
  // final Background background;
  const Databutton({
    Key? key,
    required this.onPressed,
    required this.money,
    required this.data,
    required this.color,
    // required this.background,
  }) : super(key: key);

  @override
  State<Databutton> createState() => _DatabuttonState();
}

class Background {}

class _DatabuttonState extends State<Databutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 80,
      height: 65,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(28),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.green,
          focusColor: Colors.pink,
          onTap: widget.onPressed,
          child: Container(
            color: widget.color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.money!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
