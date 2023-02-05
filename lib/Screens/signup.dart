import 'package:dalkey_data/Screens/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool iswrite = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;
// register function
  register() async {
    try {
      isLoading = true;
      setState(() {});
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      print("Successfully created");
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
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Text.rich(
                          TextSpan(children: const [
                            TextSpan(
                                text: "Create \n",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                )),
                            TextSpan(
                                text: "Account",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
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
                              color: Colors.grey,
                            ),
                            suffixIcon: iswrite
                                ? Icon(Icons.check, color: Colors.white)
                                : Icon(Icons.check, color: Colors.black),
                            filled: true,
                            fillColor: Colors.white10,
                          ),
                        ),
                        const SizedBox(height: 18),
                        TextField(
                          controller: password,
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            iconColor: Colors.white,
                            hintText: 'password',
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            ),
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
                              register();
                            },
                            child: isLoading
                                ? CircularProgressIndicator(
                                    backgroundColor: Colors.white,
                                  )
                                : Text("Signup",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white)),
                            fillColor: Colors.blue,
                            constraints: BoxConstraints.tightFor(
                              width: double.infinity,
                              height: 45,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
                            )),
                        const SizedBox(height: 10),
                        Text.rich(
                          TextSpan(children: const [
                            TextSpan(
                                text: '________________________',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                )),
                            TextSpan(text: ' or '),
                            TextSpan(
                                text: '__________________________',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                )),
                          ]),
                        ),
                        const SizedBox(height: 15),
                        RawMaterialButton(
                          elevation: 2,
                          fillColor: Colors.white,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Login()));
                          },
                          child: Text("Login",
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
