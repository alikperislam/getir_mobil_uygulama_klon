import 'package:flutter/material.dart';
import 'package:getir_mobil_uygulama_klon/GetirYemek.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

final Color getirMoru = Color(0xFF0442D87);

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.yellow[700],
                  width: size.width,
                  height: 60,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: size.width / 1.4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(28),
                            bottomRight: Radius.circular(28),
                          )),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Teslimat adresi belirleyin",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[700]),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: getirMoru,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          "TVS",
                          style: TextStyle(fontSize: 17, color: getirMoru),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "38 dk",
                          style: TextStyle(
                              fontSize: 20,
                              color: getirMoru,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // konum :
            Container(
              width: size.width,
              height: 160,
              child: Image(
                image: AssetImage("lib/gorseller/harita.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            // sağa hizalı 2 text :

            Padding(
              padding: const EdgeInsets.only(right: 20, top: 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Bi mutluluk kapınızda!",
                        style: TextStyle(fontSize: 23, color: Colors.black),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Siparişinizi şimdi verin, kapınıza kadar getirelim.",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // alt kısım
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 5),
              child: Column(
                children: [
                  // merhaba texti :
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Merhaba Alikper!",
                      style: TextStyle(fontSize: 23, color: getirMoru),
                    ),
                  ),
                  // search bar :
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 45,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border(
                        top: BorderSide(width: 2.0, color: getirMoru),
                        left: BorderSide(width: 2.0, color: getirMoru),
                        right: BorderSide(width: 2.0, color: getirMoru),
                        bottom: BorderSide(width: 2.0, color: getirMoru),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.search,
                            color: getirMoru,
                            size: 32,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Neye ihtiyacınız var?",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 6 adet container ksımı :
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: _konteyner(size),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _konteyner(Size size) {
    return Column(
      children: [
        Row(
          // 123 60
          children: [
            Container(
              height: 140,
              width: size.width / 2.35,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        "getir",
                        style: TextStyle(
                            fontSize: 20,
                            color: getirMoru,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image(
                      image: AssetImage("lib/gorseller/getir.jpg"),
                      height: 115,
                      width: 93,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Container(
                    height: 70,
                    width: size.width / 2.35,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 6,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "getirbüyük",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: getirMoru,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image(
                            image: AssetImage("lib/gorseller/getirbuyuk.jpg"),
                            height: 43,
                            width: 93,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11, bottom: 7, top: 7),
                  child: Container(
                    height: 70,
                    width: size.width / 2.35,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 6,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "getirçarşı",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: getirMoru,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image(
                            image: AssetImage("lib/gorseller/getircarsi.jpg"),
                            height: 43,
                            width: 93,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // 60 60
        Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 11,
                  ),
                  child: Container(
                    height: 70,
                    width: size.width / 2.35,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 6,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "getirsu",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: getirMoru,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image(
                            image: AssetImage("lib/gorseller/getirsu.jpg"),
                            height: 43,
                            width: 93,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 11, top: 3),
                  child: Container(
                    height: 70,
                    width: size.width / 2.35,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 6,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "getirtaksi",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: getirMoru,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image(
                            image: AssetImage("lib/gorseller/getirtaksi.jpg"),
                            height: 43,
                            width: 93,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              // getiryemek ayfasına gönderecek.
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GetirYemek()));
              },
              child: Container(
                height: 140,
                width: size.width / 2.35,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "getiryemek",
                          style: TextStyle(
                              fontSize: 20,
                              color: getirMoru,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image(
                        image: AssetImage("lib/gorseller/getiryemek.jpg"),
                        height: 115,
                        width: 110,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
