import 'dart:ui';

import 'package:customdesign/widget/CustomFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:customdesign/widget/CustomColor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool _isobscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.bgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.person,
            color: CustomColor.primaryColor,
          ),
          title: Text("Login Page",
              style:
                  myStyle(22, 0, 0, CustomColor.primaryColor, FontWeight.w800)),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                  color: CustomColor.primaryColor,
                  onPressed: () {},
                  icon: Icon(Icons.close_rounded)),
            ),
          ],
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            height: MediaQuery.of(context).size.height * 0.60,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color(0xff224957), width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(16),
              color: Color(0xff224957).withOpacity(0.3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sign in",
                  style: myStyle(
                      36, 0, 1, CustomColor.primaryColor, FontWeight.w600),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Sign in & Join Our Community",
                  style: myStyle(
                      18, 0, 2, CustomColor.primaryColor, FontWeight.w600),
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              hintStyle: myStyle(16, 0, 0, CustomColor.wColor,
                                  FontWeight.w600),
                              hintText: "Login",
                              filled: true,
                              fillColor: CustomColor.primaryColor),
                          style: TextStyle(color: CustomColor.wColor),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          obscureText: _isobscure,
                          controller: passController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              hintStyle: myStyle(16, 0, 0, CustomColor.wColor,
                                  FontWeight.w600),
                              hintText: "Password",
                              filled: true,
                              fillColor: CustomColor.primaryColor),
                          style: TextStyle(color: CustomColor.wColor),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            color: CustomColor.primaryColor,
                            borderRadius: BorderRadius.circular(8)),
                        // child: Icon(
                        //   Icons.check_box_rounded,
                        //   size: 30,
                        // ),
                      ),
                      Text(
                        "Remember Me",
                        style: myStyle(16, 0, 0, CustomColor.primaryColor,
                            FontWeight.w700),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Forget Password?",
                        style: myStyle(16, 0, 0, Colors.black, FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 52,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: CustomColor.secondryColor),
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: myStyle(18, 0, 1, CustomColor.primaryColor,
                            FontWeight.w700),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
