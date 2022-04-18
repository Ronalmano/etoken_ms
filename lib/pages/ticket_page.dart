import 'package:etoken_ms/utils/colors.dart';
import 'package:flutter/material.dart';

class TicketPage extends StatefulWidget {
  int tokenATM;
  int tokenSM;
  int tokenHC;
  TicketPage({
    Key? key,
    required this.tokenATM,
    required this.tokenSM,
    required this.tokenHC,
  }) : super(key: key);

  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  bool flagATM = true;
  bool flagSM = true;
  bool flagHC = true;

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: Text("Ticket"),
        backgroundColor: secondry,
      ),
      backgroundColor: secondry,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),

                // ATM Bank Ticket
                (widget.tokenATM != 0 || flagATM == true)
                    ? SafeArea(
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          decoration: BoxDecoration(
                            //border: Border.all(width: 3, color: logoColor),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "ETA",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      //fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "${widget.tokenATM * 5} min",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Text(
                                    "ISSUE",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      //fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Text(
                                    "2022-02-22",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Place",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      //fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Text(
                                    "ATM Bank",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Text(
                                    "TOKEN",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      //fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "${widget.tokenATM}",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      flagATM = !flagATM;
                                      widget.tokenATM = 0;
                                    });
                                  },
                                  child: Icon(
                                    Icons.delete,
                                    color: logoColor,
                                    size: 30,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 40,
                ),

                // Shoping Mall Ticket
                (widget.tokenSM != 0 && flagSM == true)
                    ? Container(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 10, top: 10, bottom: 10),
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: BoxDecoration(
                          //border: Border.all(width: 3, color: logoColor),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "ETA",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "${widget.tokenSM * 3} min",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "ISSUE",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "2022-02-22",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Place",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "Shopping ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "TOKEN",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "${widget.tokenSM}",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    flagSM = !flagSM;
                                    widget.tokenSM = 0;
                                  });
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: logoColor,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 30,
                ),

                // Health Clininc Ticket
                (widget.tokenHC != 0 && flagHC == true)
                    ? Container(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 10, top: 10, bottom: 10),
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: BoxDecoration(
                          //border: Border.all(width: 3, color: logoColor),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "ETA",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "${widget.tokenHC * 10} min",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "ISSUE",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "2022-02-22",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Place",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "Health Clinic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "TOKEN",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "${widget.tokenHC}",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    flagHC = !flagHC;
                                    widget.tokenHC = 0;
                                  });
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: logoColor,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
