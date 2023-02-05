import 'package:dalkey_data/Screens/hormuud.dart';
import 'package:dalkey_data/Screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;
  bool isWriting = true;

  signing() async {
    isLoading = true;
    setState(() {});
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => HormuudScreen()));
    } catch (e) {
      print(e.toString());
    }
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                icon: Icon(Icons.arrow_back)),
          ),
          body: SafeArea(
            child: ListView(
              children: [
                // Text(
                //   FirebaseAuth.instance.currentUser?.email ?? '',
                //   style: TextStyle(fontSize: 30),
                // ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Text.rich(
                          TextSpan(children: const [
                            TextSpan(
                                text: "Welcome \n",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  //decoration: TextDecoration.underline,
                                )),
                            TextSpan(
                                text: "Back",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  //decoration: TextDecoration.underline,
                                )),
                          ]),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/bg2.png"),
                    fit: BoxFit.cover,
                  )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            iconColor: Colors.white,
                            hintText: 'forexample@gmail.com',
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(Icons.check, color: Colors.black),
                            filled: true,
                            fillColor: Colors.white10,
                          ),
                        ),
                        const SizedBox(height: 18),
                        TextField(
                          obscureText: true,
                          controller: password,
                          decoration: InputDecoration(
                            iconColor: Colors.white,
                            hintText: 'passward',
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            filled: true,
                            fillColor: Colors.white10,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text("forgot password?",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ],
                        ),
                        RawMaterialButton(
                            elevation: 2,
                            onPressed: () {
                              signing();
                            },
                            child: isLoading
                                ? CircularProgressIndicator(
                                    backgroundColor: Colors.white,
                                  )
                                : Text("Login",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white)),
                            fillColor: Colors.blue,
                            constraints: BoxConstraints.tightFor(
                              width: double.infinity,
                              height: 45,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        const SizedBox(
                          height: 15,
                        ),
                        RawMaterialButton(
                          elevation: 2,
                          fillColor: Colors.white,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Signup()));
                          },
                          child: Text("Sign up",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.grey)),
                          constraints: BoxConstraints.tightFor(
                            width: double.infinity,
                            height: 45,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
