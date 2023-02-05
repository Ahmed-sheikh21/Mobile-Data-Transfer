import 'package:dalkey_data/widget/main_hormuud.dart';
import 'package:dalkey_data/widget/main_somnet.dart';
import 'package:dalkey_data/widget/main_somtel.dart';
import 'package:flutter/cupertino.dart';

class Main_buttons extends StatelessWidget {
  const Main_buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Main_hormuud(),
          Main_somnet(),
          Main_somtel(),
        ],
      ),
    );
  }
}
