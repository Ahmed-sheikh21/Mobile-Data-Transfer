import 'package:dalkey_data/Screens/screens.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HormuudScreen();
          } else {
            return Login();
          }
        },
      ),
    );
  }
}
