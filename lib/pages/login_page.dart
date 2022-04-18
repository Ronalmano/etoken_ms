import 'package:etoken_ms/pages/home_page.dart';
import 'package:etoken_ms/pages/sign_up.dart';
import 'package:etoken_ms/utils/colors.dart';
import 'package:etoken_ms/utils/info-class.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: primary,
        body: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Sign in to ETokenGen and continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Enter your email and password below to continue !',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  _buildTextField(
                      nameController, Icons.account_circle, 'Username'),
                  const SizedBox(height: 20),
                  _buildTextField(passwordController, Icons.lock, 'Password'),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: MaterialButton(
                      elevation: 0,
                      minWidth: double.maxFinite,
                      height: 50,
                      onPressed: () {
                        setState(() {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => HomePage(
                                        username: nameController.text,
                                      )));
                        });
                      },
                      color: logoColor,
                      child: const Text('Login',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      textColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    elevation: 0,
                    minWidth: double.maxFinite,
                    height: 50,
                    onPressed: () {
                      //Here goes the logic for Google SignIn discussed in the next section
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => SignInPage()));
                    },
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //Icon(),
                        SizedBox(width: 10),
                        Text('Sign Up',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                    textColor: Colors.white,
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ));
  }

  _buildTextField(
      TextEditingController controller, IconData icon, String labelText) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: secondry, border: Border.all(color: Colors.blue)),
      child: TextField(
        controller: controller,
        obscureText: (labelText == 'Password') ? true : false,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.white),
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            // prefix: Icon(icon),
            border: InputBorder.none),
      ),
    );
  }
}
