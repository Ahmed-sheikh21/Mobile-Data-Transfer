import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
  final Function() onPressed;
  final String? imagePath;
  final String? title;

  const MainButton({
    Key? key,
    required this.onPressed,
    this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Material(
        color: Colors.green,
        elevation: 8,
        borderRadius: BorderRadius.circular(28),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () => onPressed,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                width: 105,
                height: 115,
                image: AssetImage(widget.imagePath!),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                widget.title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
