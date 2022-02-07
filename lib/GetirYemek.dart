import 'package:flutter/material.dart';
import 'package:getir_mobil_uygulama_klon/GetirYemekAnaSayfa.dart';
import 'package:getir_mobil_uygulama_klon/GetirYemekArama.dart';
import 'package:getir_mobil_uygulama_klon/GetirYemekHediye.dart';
import 'package:getir_mobil_uygulama_klon/GetirYemekKullanici.dart';
import 'package:getir_mobil_uygulama_klon/main.dart';

void main() => runApp(GetirYemekStl());

class GetirYemekStl extends StatelessWidget {
  const GetirYemekStl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetirYemek(),
    );
  }
}

class GetirYemek extends StatefulWidget {
  const GetirYemek({Key? key}) : super(key: key);
  @override
  _GetirYemekState createState() => _GetirYemekState();
}

int sayfa = 0;
final Color getirMoru = Color(0xFF0442D87);
bool home = true, search = false, person = false, gift = false;
var sayfalar = [
  GetirYemekAnaSayfa(),
  GetirYemekArama(),
  GetirYemekKullanici(),
  GetirYemekHediye(),
];
var appbarTitle = ["lib/gorseller/logogetir.png", "Arama", "Profil"];
int sayiAppbar = 0;
bool resimMi = true;

class _GetirYemekState extends State<GetirYemek> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        // appbar :
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: resimMi
                ? Image(
                    image: AssetImage("lib/gorseller/logogetir.png"),
                    height: 30,
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text("${appbarTitle[sayiAppbar]}"),
                  ),
          ),
          backgroundColor: getirMoru,
        ),
        // Body - navBar : // navBar özelleştirilmiş olacak ve body içerisine gömülü olacak.
        body: Stack(
          children: [
            // body kısmı :
            SingleChildScrollView(
              child: Column(
                children: [sayfalar[sayfa]],
              ),
            ),
            // navBar kısmı :
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.grey),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 1,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // home ekranı :
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          home = true;
                          search = false;
                          person = false;
                          gift = false;
                          sayiAppbar = 0;
                          resimMi = true;
                          // home ekranına yönlendir :
                        });
                        sayfa = 0;
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Icon(
                              Icons.home,
                              color: home ? getirMoru : Colors.grey,
                              size: 30,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                                color: home ? getirMoru : Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                          ),
                        ],
                      ),
                    ),
                    // search ekranı :
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          home = false;
                          search = true;
                          person = false;
                          gift = false;
                          sayiAppbar = 1;
                          resimMi = false;
                          // search ekranına yönlendir :
                        });
                        sayfa = 1;
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Icon(
                              Icons.search_rounded,
                              color: search ? getirMoru : Colors.grey,
                              size: 30,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                                color: search ? getirMoru : Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                          ),
                        ],
                      ),
                    ),
                    // person ekranı :
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          home = false;
                          search = false;
                          person = true;
                          gift = false;
                          sayiAppbar = 2;
                          resimMi = false;
                          // person ekranına yönlendir :
                        });
                        sayfa = 2;
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Icon(
                              Icons.person,
                              color: person ? getirMoru : Colors.grey,
                              size: 30,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                                color: person ? getirMoru : Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                          ),
                        ],
                      ),
                    ),
                    // gift ekranı :
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          home = false;
                          search = false;
                          person = false;
                          gift = true;
                          sayiAppbar = 0;
                          resimMi = true;
                          // gift ekranına yönlendir :
                        });
                        sayfa = 3;
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Icon(
                              Icons.wallet_giftcard_rounded,
                              color: gift ? getirMoru : Colors.grey,
                              size: 30,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                                color: gift ? getirMoru : Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // floating action buttons :
          ],
        ),
        floatingActionButton: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 35, top: 600),
            child: FloatingActionButton(
                backgroundColor: getirMoru,
                child: Icon(
                  Icons.dialpad_rounded,
                  size: 35,
                  color: Colors.yellow[700],
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
      ),
    );
  }
}
