import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_final/widget/widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // User? user = FirebaseAuth.instance.currentUser;
  // AuthMethods authMethods = new AuthMethods();
  // DatabaseMethods databaseMethods = new DatabaseMethods();
 // final formKey = GlobalKey<FormState>(); not needed
  //TextEditingController emailTextEditingController =new TextEditingController();
  //TextEditingController passwordTextEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 75),
            Image.asset("lib/assets/images/flutter-logo@3x.png",
                height: 100, width: 273),
            SizedBox(height: 75),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        // validator: (val) => RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(val!) ? null : "Please provide a valid email",
                        //        controller: emailTextEditingController,
                        decoration: textFieldInputDecoration("Email", Icons.email_outlined),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        // validator: (val) => RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(val!) ? null : "Please provide a valid email",
                        //  controller: passwordTextEditingController,
                        decoration: textFieldInputDecoration(
                            "Password", Icons.lock_outline),
                        obscureText: true,
                      ),
                      SizedBox(height: 18),
                      Text("ForgotPassword?",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 120),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          // Fix size latter...
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                const Color(0xff007EF4),
                                const Color(0xff2A75BC)
                              ]),
                              borderRadius: BorderRadius.circular(30)),

                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      orDevider(),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 53),
                            // Fix size latter...
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30)),

                            child: Row(children: [
                              Image.asset(
                                "lib/assets/icons/google_icon.png",
                                height: 20,
                              ),
                              Text(
                                "  Google",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 54),
                            // Fix size latter...
                            decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(30)),

                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),

            SizedBox(height: 25),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account? ",
                  style: mediumTextStyle(),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Text(
                    "Register now ",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 17,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),









          ],
        ),
      ),
    );
  }
}
