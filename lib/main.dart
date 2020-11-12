
import 'package:flutter/material.dart';
Color boxColor=Colors.blueGrey.shade300;

void main() {
  runApp(MyApp());
}
class App extends StatelessWidget {
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
                    radius: MediaQuery.of(context).size.height*0.07,
                    backgroundImage: AssetImage("images/mobil ödev icon.png"),
                  ),
                ],
              ),
              Text("Atakan YENİCELİ",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 15,letterSpacing: 1.5),textScaleFactor: MediaQuery.of(context).size.height*0.002,),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width:MediaQuery.of(context).size.width/4.5,
                    margin: EdgeInsets.only(left: 5,top: 5,right: 5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(100,100),),color:boxColor),
                    child:Column(children: [Icon(Icons.message),Text("Mesaj")],),
                    
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width:MediaQuery.of(context).size.width/4.5,
                    margin: EdgeInsets.only(top: 5,right: 5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(100,100),),color:boxColor),
                    child: Column(children: [Icon(Icons.phone),Text("Cep")],),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width:MediaQuery.of(context).size.width/4,
                    margin: EdgeInsets.only(top: 5,right: 5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(100,100),),color:boxColor),
                    child:Column(children: [Icon(Icons.messenger_outline),Text("Whatsapp")],),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width:MediaQuery.of(context).size.width/4.5,
                    margin: EdgeInsets.only(top: 5,right: 5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(100,100),),color:boxColor),
                    child: Column(children: [Icon(Icons.sms),Text("SMS")],),
                  ),
                ],
              ),
              Row(
                children: [
                Container(
                height: MediaQuery.of(context).size.height*0.1,
                width:MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 5,top: 5),
                padding: EdgeInsets.only(bottom: 5,left: 5,right: 5,top: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),color: boxColor,),
                child:Column(
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
               ],
              ),
              Row(children: [
                Container(
                  child:RichText(text: TextSpan(children: [TextSpan(text: "FaceTime"),],style: TextStyle(color: Colors.black),),),
                  height: MediaQuery.of(context).size.height*0.12,
                  width:MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 5,top: 5),
                  padding: EdgeInsets.only(bottom: 5,left: 5,right: 5,top: 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),color: boxColor,),
                ),
              ],
              ),
              Row(children: [
                Container(
                  child:RichText(text: TextSpan(children: [TextSpan(text: "Notlar"),],style: TextStyle(color: Colors.black)),),
                  height: MediaQuery.of(context).size.height*0.20,
                  width:MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 5,top: 5),
                  padding: EdgeInsets.only(bottom: 5,left: 5,right: 5,top: 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),color: boxColor,),
                ),
              ],
              ),
              Row(children: [
                Container(
                  child:Column(
                    children: [
                      Row(children: [Container(margin: EdgeInsets.only(top: 5),child: Row(children: [Text("Mesaj Gönder"),],),),],),
                      Row(children: [Container(margin: EdgeInsets.only(top: 25),child: Row(children: [Text("Kişiyi Paylaş"),],),),],),
                      Row(children: [Container(margin: EdgeInsets.only(top: 25),child: Row(children: [Text("Hızlı Aramaya Ekle"),],),),],),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height*0.20,
                  width:MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 5,top: 5),
                  padding: EdgeInsets.only(bottom: 5,left: 5,right: 5,top: 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),color: boxColor,),
                 ),
               ],
              ),
            ],
          ),
        ),
      );
  }
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
    );
  }
}