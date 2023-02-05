import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dalkey_data/Screens/screens.dart';

class NavBar extends StatelessWidget {
  Future<bool?> onExitButton(BuildContext context) async {
    // ignore: unused_local_variable
    bool? exitApp = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Really?"),
          content: const Text("Do you want to close the app?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text("No"),
            ),
            TextButton(
                onPressed: () {
                  SystemNavigator.pop();
                  // Navigator.of(context).pop(true);
                },
                child: Text("Yes")),
          ],
        );
      },
    );
    return null;
  }
  //final user = FirebaseAuth.instance.currentUser!;

  getProfileImage() {
    if (FirebaseAuth.instance.currentUser()?.photoURL != null) {
      return Image.network(
        FirebaseAuth.instance.currentUser()!.photoURL!,
        height: 26,
        width: 36,
      );
    } else {
      return Icon(
        Icons.account_circle,
        size: 70,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getProfileImage(),
                  Text(
                    FirebaseAuth.instance.currentUser()?.email ?? '',
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        'signout',
                        style: TextStyle(color: Colors.red),
                      ),
                      IconButton(
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                          },
                          icon: Icon(Icons.logout)),
                    ],
                  )
                ],
              )),
          // UserAccountsDrawerHeader(
          //   accountEmail: Text(
          //     FirebaseAuth.instance.currentUser()?.displayName ?? '',
          //   ),
          //   accountName: ListView(
          //     children: [

          //       const SizedBox(
          //         height: 15,
          //       ),
          //       Text(FirebaseAuth.instance.currentUser()?.email ?? ''),
          //       Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Text(
          //             'signout',
          //             style: TextStyle(color: Colors.black),
          //           ),
          //           IconButton(
          //               onPressed: () {
          //                 FirebaseAuth.instance.signOut();
          //               },
          //               icon: Icon(Icons.logout)),
          //         ],
          //       ),
          //     ],
          //   ),
          //   currentAccountPicture: CircleAvatar(
          //     child: getProfileImage(),

          //     // Image(
          //     //   image: AssetImage('assets/images/logodalkey.png'),
          //     //   fit: BoxFit.cover,
          //     // ),
          //   ),
          // ),
          // //IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          ListTile(
            leading: Icon(Icons.people),
            title: Text(
              "Friends",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text(
              "Share",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              "Requests",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.policy),
            title: Text(
              "Policy",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              "Exit",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () => onExitButton(context),
          ),
        ],
      ),
    );
  }
}
