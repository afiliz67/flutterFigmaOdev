import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'NotePage.dart';

Color boxColor = Colors.blueGrey.shade300;
String phoneNumber = "********";
String _email = "****@gmail.com";

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: MediaQuery.of(context).size.height * 0.07,
                  backgroundImage: AssetImage("images/mobil ödev icon.png"),
                ),
              ],
            ),
            Text(
              "Atakan YENİCELİ",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  letterSpacing: 1.5),
              textScaleFactor: MediaQuery.of(context).size.height * 0.002,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width / 4.5,
                  margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(100, 100),
                      ),
                      color: boxColor),
                  child: GestureDetector(
                    child: Column(
                      children: [Icon(Icons.message), Text("Mesaj")],
                    ),
                    onTap: () {
                      setState(
                        () {
                          sms();
                        },
                      );
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width / 4.5,
                  margin: EdgeInsets.only(top: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(100, 100),
                      ),
                      color: boxColor),
                  child: GestureDetector(
                    child: Column(
                      children: [Icon(Icons.phone), Text("Cep")],
                    ),
                    onTap: () {
                      setState(
                        () {
                          calling();
                        },
                      );
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width / 4,
                  margin: EdgeInsets.only(top: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(100, 100),
                      ),
                      color: boxColor),
                  child: GestureDetector(
                    child: Column(
                      children: [Icon(MdiIcons.whatsapp), Text("Whatsapp")],
                    ),
                    onTap: () {
                      whatsapp();
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width / 4.5,
                  margin: EdgeInsets.only(top: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(100, 100),
                      ),
                      color: boxColor),
                  child: GestureDetector(
                    child: Column(
                      children: [Icon(Icons.attach_email), Text("E-mail")],
                    ),
                    onTap: () {
                      setState(() {
                        eMail();
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 5, top: 5),
                    padding:
                        EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: boxColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Cep"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("05549230107"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onDoubleTap: () {
                    setState(() {
                      boxColor = Colors.indigo;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  child: Container(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "FaceTime"),
                        ],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 5, top: 5),
                    padding:
                        EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: boxColor,
                    ),
                  ),
                  onDoubleTap: () {
                    setState(() {
                      boxColor = Colors.red;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  child: Container(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "Notlar\n"),
                        TextSpan(text: text),
                      ], style: TextStyle(color: Colors.black)),
                    ),
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 5, top: 5),
                    padding:
                        EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: boxColor,
                    ),
                  ),
                  onDoubleTap: () {
                    setState(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => NotePage(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Text("Mesaj Gönder"),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  sms();
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(top: 25),
                              child: Row(
                                children: [
                                  Text("Kişiyi Paylaş"),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  boxColor = Colors.yellow;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(top: 25),
                              child: Row(
                                children: [
                                  Text("Hızlı Aramaya Ekle"),
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  boxColor = Colors.lime;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 5, top: 5),
                  padding:
                      EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: boxColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void whatsapp() async {
  String url = "whatsapp://send?phone=+9$phoneNumber";
  if (await canLaunch(url)) {
    launch(url);
  }
}

void sms() async {
  String url = "sms:+$phoneNumber";
  if (await canLaunch(url)) {
    launch(url);
  }
}

void eMail() async {
  String url = "mailto:$_email";
  if (await canLaunch(url)) {
    launch(url);
  }
}

void calling() async {
  String url = "tel:$phoneNumber";
  if (await canLaunch(url)) {
    launch(url);
  }
}
