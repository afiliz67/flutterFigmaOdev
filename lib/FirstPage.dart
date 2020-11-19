import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'NotePage.dart';
import 'package:flutter_share/flutter_share.dart';

Color boxColor = Colors.blueGrey.shade300;
String phoneNumber = "********";
String _email = "****@gmail.com";
String nick = "Atakan YENİCELİ";

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
                  backgroundImage: AssetImage("images/AvatarIcon.png"),
                ),
              ],
            ),
            Text(
              nick,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  letterSpacing: 1.5),
              textScaleFactor: MediaQuery.of(context).size.height * 0.002,
            ),
            /*4 Container ile  mesaj,arama,whatsapp,email kısayolu oluşturuldu */
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
            /*Kişinin Numaraa Bilgisi */
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
                            Text(phoneNumber),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onDoubleTap: () {
                    setState(() {
                      calling();
                    });
                  },
                ),
              ],
            ),
            /*Kişi ile Sohbet Başlatma */
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
            /*Kişi Hakkında Notlar */
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
            /*Kişinin kısa yolları */
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
                                  FlutterShare.share(
                                      title: "Kisiyi Paylas",
                                      text: nick,
                                      linkUrl: phoneNumber);
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

/*Whatsapp yönlendirme methodu */
void whatsapp() async {
  String url = "whatsapp://send?phone=+9$phoneNumber";
  if (await canLaunch(url)) {
    launch(url);
  }
}

/*sms yönlendirme methodu */
void sms() async {
  String url = "sms:+$phoneNumber";
  if (await canLaunch(url)) {
    launch(url);
  }
}

/*email yönlendirme methodu */
void eMail() async {
  String url = "mailto:$_email";
  if (await canLaunch(url)) {
    launch(url);
  }
}

/*Kişiyi aramaya yönlendirme methodu */
void calling() async {
  String url = "tel:$phoneNumber";
  if (await canLaunch(url)) {
    launch(url);
  }
}
