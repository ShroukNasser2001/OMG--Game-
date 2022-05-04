import 'dart:math';

import 'package:flutter/material.dart';

//import 'package:untitled/piano.dart';
void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(home: omg());
  }
}

class omg extends StatefulWidget {
  @override
  State<omg> createState() => _omgState();
}

class _omgState extends State<omg> {
  List<patient> dis_cure = [
    patient(
      disease: "قلة النوم",
      cure: "أغلق هاتفك و استرخي",
    ),
    patient(
      disease: "صداع نصفي",
      cure: "عدم الاجهاد و عدم التعرض لأي هواتف   ",
    ),
    patient(
      disease: "برد",
      cure: "خذ دواء للبرد",
    ),
    patient(
      disease: "مريض سكر",
      cure: "قلل السكريات و نظم أكلك",
    ),
  ];
  int count = 0;
  Random r = Random();

  Widget build(BuildContext context) {
    // count = r.nextInt(dis_cure.length);
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: <Widget>[
              Center(
                child: Text(
                  "  ",
                ),
              ),
              FittedBox(
                child: Image.asset('images/mg_background.jpeg'),
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 150),
                child: Text(
                  'Aya   ',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Mada',
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 250),
                child: Text(
                  dis_cure[count].disease,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Mada',
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 410),
                child: Text(
                  dis_cure[count].cure,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Mada',
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black.withOpacity(0.09),
            onPressed: () {
              setState(
                    () {
                  count = r.nextInt(dis_cure.length);
                },
              );
            },
            child: Icon(
              Icons.videogame_asset,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }
}

class patient {
  late String disease;
  late String cure;

  patient({
    required this.disease,
    required this.cure,
  });
}
