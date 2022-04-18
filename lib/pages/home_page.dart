import 'package:etoken_ms/pages/login_page.dart';
import 'package:etoken_ms/pages/ticket_page.dart';
import 'package:etoken_ms/utils/colors.dart';
import 'package:etoken_ms/utils/info-class.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String username;
  HomePage({Key? key, required this.username}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tokenATM = 3;
  int tokenSM = 5;
  int tokenHC = 2;

  int tokenATMNo = 0;
  int tokenSMNo = 0;
  int tokenHCNo = 0;

  late Info cms;
  final name = 'Sarah Abs';
  final email = 'sarah@abs.com';
  final urlImage =
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.qr_code_scanner_outlined,
              size: 33,
            ),
          ),
          //Icon(Icons.qr_code),
        ],
        backgroundColor: primary,
      ),
      drawer: Drawer(
        backgroundColor: secondry,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          // padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 220,
              child: DrawerHeader(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                //margin: EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.transparent, //Color(0xff232c51),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                          const Text(
                            'Manage',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      buildHeader(
                        urlImage: urlImage,
                        name: widget.username,
                        email: "",
                        onClicked: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ListTile(
              leading: const Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
                size: 25,
              ),
              title: const Text(
                'Tickets',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => TicketPage(
                              // tokenATM: tokenATMNo,
                              tokenATM: tokenATMNo,
                              tokenSM: 4,
                              tokenHC: tokenHCNo,
                            )));
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Colors.white),
              title: const Text('Sign Out',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: () {
                setState(() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginPage()));
                });
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.close, color: Colors.white),
            //   title: Text('Close',
            //       style: TextStyle(color: Colors.white, fontSize: 20)),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.pop(context);
            //   },
            // ),
          ],
        ),
      ),
      backgroundColor: primary,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  bottomsheetATM();
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: logoColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            "ATM Bank",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              //fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            (tokenATM >= 0) ? "Token : $tokenATM" : "Token : 0",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              //fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Icon(
                            Icons.add_box_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  bottomsheetSM();
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: logoColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Shopping Mall ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              //fontWeight: FontWeight.w600
                            ),
                          ),
                          const Spacer(),
                          Text(
                            (tokenSM > 0) ? "Token : $tokenSM" : "Token : 0",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              //fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Icon(
                            Icons.add_box_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  bottomsheetHC();
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: logoColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Health Clinic",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              //fontWeight: FontWeight.w600
                            ),
                          ),
                          const Spacer(),
                          Text(
                            (tokenHC > 0) ? "Token : $tokenHC" : "Token : 0",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              //fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Icon(
                            Icons.add_box_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Icon(
                Icons.account_circle_rounded,
                size: 40,
                color: Colors.grey,
              ),
              // Container(
              //   // height: 30,
              //   // width: 30,
              //   decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       //borderRadius: BorderRadius.circular(20),
              //       color: Colors.transparent),
              //   child:
              // ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      );

  void bottomsheetATM() {
    showModalBottomSheet<dynamic>(
        //enableDrag: false,
        //isDismissible: false,
        //isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: logoColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "ATM Bank",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Street Marg , Joshvilla Town",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    (tokenATM > 0)
                        ? "Token Avalible : $tokenSM"
                        : "Token Avalible : 0",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    elevation: 0,
                    minWidth: double.maxFinite,
                    height: 50,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => TicketPage(
                                    // tokenATM: tokenATMNo,
                                    tokenATM: tokenATMNo,
                                    tokenSM: tokenSMNo,
                                    tokenHC: tokenHCNo,
                                  )));
                      setState(() {
                        tokenATM--;
                        tokenATMNo++;
                        debugPrint("ATM bank");
                      });
                      //Here goes the logic for Google SignIn discussed in the next section
                    },
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //Icon(),
                        SizedBox(width: 10),
                        Text('Generate Token',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          );
        });
  }

  void bottomsheetSM() {
    showModalBottomSheet<dynamic>(
        //enableDrag: false,
        //isDismissible: false,
        //isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: logoColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Shopping Mall",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Vivira mall , Navallur Tamil Nadu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Token Avalible : $tokenSM",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    elevation: 0,
                    minWidth: double.maxFinite,
                    height: 50,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => TicketPage(
                                    // tokenATM: tokenATMNo,
                                    tokenATM: tokenATMNo,
                                    tokenSM: tokenSMNo,
                                    tokenHC: tokenHCNo,
                                  )));
                      setState(() {
                        tokenSM--;
                        tokenSMNo++;
                        debugPrint("Shopping Mall");
                      });
                      //Here goes the logic for Google SignIn discussed in the next section
                    },
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //Icon(),
                        SizedBox(width: 10),
                        Text('Generate Token',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          );
        });
  }

  void bottomsheetHC() {
    showModalBottomSheet<dynamic>(
        //enableDrag: false,
        //isDismissible: false,
        //isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: logoColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Health Clinic",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Health Block, VIT Chennai",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Token Avalible : $tokenHC",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    elevation: 0,
                    minWidth: double.maxFinite,
                    height: 50,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => TicketPage(
                                    // tokenATM: tokenATMNo,
                                    tokenATM: tokenATMNo,
                                    tokenSM: tokenSMNo,
                                    tokenHC: tokenHCNo,
                                  )));
                      //Navigator.pop(context);

                      setState(() {
                        tokenHC--;
                        tokenHCNo++;
                        debugPrint("Health Clinic");
                      });

                      //Here goes the logic for Google SignIn discussed in the next section
                    },
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //Icon(),
                        SizedBox(width: 10),
                        Text('Generate Token',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
