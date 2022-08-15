import 'package:bilgi/SoruBankasi.dart';
import 'package:bilgi/testVeri.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secim = [];
  bool x = true;
  Test test1 = Test();

  void Buton(bool y) {
    if (test1.bittiMi() == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: new Text("OYUN BITTI"),
              content: new Text("Nice Game"),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("Başa Dön Tekrar Oyna"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState((){
                      secim = [];
                      test1.sifirla();});
                  },
                ),
              ],
            );
          });
       }
        else{
      setState(() {
        x = y;
        x == test1.getYanit() ? secim.add(dogru) : secim.add(yanlis);
        test1.sayi();
      });
    }

    }

    @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  test1.getSoru(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            children: secim,
          ),
          Expanded(
            flex: 1,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: RaisedButton(
                                padding: EdgeInsets.all(12),
                                textColor: Colors.white,
                                color: Colors.red[400],
                                child: Icon(
                                  Icons.thumb_down,
                                  size: 30.0,
                                ),
                                onPressed: () {
                                  Buton(false);
                                },
                              ))),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: RaisedButton(
                                padding: EdgeInsets.all(12),
                                textColor: Colors.white,
                                color: Colors.green[400],
                                child: Icon(Icons.thumb_up, size: 30.0),
                                onPressed: () {
                                  Buton(true);
                                },
                              ))),
                    ])),
          )
        ],
      );
    }
  }
