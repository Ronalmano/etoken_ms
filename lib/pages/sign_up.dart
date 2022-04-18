import 'dart:ui';

import 'package:etoken_ms/pages/login_page.dart';
import 'package:etoken_ms/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController namectr = new TextEditingController();
  TextEditingController agectr = new TextEditingController();
  TextEditingController numbctr = new TextEditingController();
  TextEditingController mailctr = new TextEditingController();
  TextEditingController placectr = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: secondry,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                "Sign Up ",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: namectr,
                style: TextStyle(color: Colors.white, fontSize: 22),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  border: UnderlineInputBorder(),
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  hintStyle: TextStyle(color: Colors.white, fontSize: 13),
                  hintText: "Enter your name",
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: agectr,
                style: TextStyle(color: Colors.white, fontSize: 22),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.numbers,
                    color: Colors.white,
                  ),
                  labelText: "Age",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  hintStyle: TextStyle(color: Colors.white, fontSize: 13),
                  hintText: "Enter your age",
                  contentPadding: EdgeInsets.all(10),
                ),
                onSaved: (String? agectr) {},
                validator: (String? agectr) {},
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: numbctr,
                style: TextStyle(color: Colors.white, fontSize: 22),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  labelText: "Phone Number",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  hintStyle: TextStyle(color: Colors.white, fontSize: 13),
                  hintText: "Enter your phone number",
                  contentPadding: EdgeInsets.all(10),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: mailctr,
                style: TextStyle(color: Colors.white, fontSize: 22),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  labelText: "Mail ID",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  hintStyle: TextStyle(color: Colors.white, fontSize: 13),
                  hintText: "Enter your mail ID",
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: placectr,
                style: TextStyle(color: Colors.white, fontSize: 22),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.place,
                    color: Colors.white,
                  ),
                  labelText: "Place",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  hintStyle: TextStyle(color: Colors.white, fontSize: 13),
                  hintText: "Enter your native place",
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new LoginPage()));
                },
                color: Colors.blue,
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
