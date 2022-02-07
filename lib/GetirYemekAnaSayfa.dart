import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'GetirYemek.dart';

class GetirYemekAnaSayfa extends StatefulWidget {
  const GetirYemekAnaSayfa({Key? key}) : super(key: key);

  @override
  _GetirYemekAnaSayfaState createState() => _GetirYemekAnaSayfaState();
}

final List<String> imgList = [
  "lib/carousel/c0.jpg",
  "lib/carousel/c1.jpg",
  "lib/carousel/c2.jpg",
  "lib/carousel/c3.jpg",
  "lib/carousel/c4.jpg",
];

class _GetirYemekAnaSayfaState extends State<GetirYemekAnaSayfa> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          // üst gönderim paneli :
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
          // carrousel :
          // carousel görseller için gerekli olan alan :
          CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        child: Center(
                          child: Image(width: 650, image: AssetImage(item)),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                  autoPlayAnimationDuration: Duration(milliseconds: 700),
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true)),
          // cards :
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _cards(
                    Icon(
                      Icons.food_bank_outlined,
                      color: getirMoru,
                      size: 28,
                    ),
                    "Ne Yesem?"),
                _cards(
                    Icon(
                      Icons.wallet_giftcard_sharp,
                      color: getirMoru,
                      size: 28,
                    ),
                    "Müdavim"),
                _cards(
                    Icon(
                      Icons.timelapse_sharp,
                      color: getirMoru,
                      size: 28,
                    ),
                    "Siparişlerim"),
                _cards(
                    Icon(
                      Icons.favorite,
                      color: getirMoru,
                      size: 28,
                    ),
                    "Favorilerim"),
              ],
            ),
          ),
          // filters container :
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Icon(
                      Icons.filter_alt_sharp,
                      size: 28,
                      color: getirMoru,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Filtrele",
                      style: TextStyle(color: getirMoru, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      height: 25,
                      width: 2,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Icon(
                      Icons.compare_arrows_outlined,
                      size: 28,
                      color: getirMoru,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Sırala",
                      style: TextStyle(color: getirMoru, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // row - restaurants :
          ////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Row(
              children: [
                Text(
                  "Müdavim Restoranlar",
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                Text(
                  "Tümünü Gör (8)",
                  style: TextStyle(color: getirMoru, fontSize: 18),
                ),
              ],
            ),
          ),
          /////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _mudavim(
                      "lib/carousel/1.jpg",
                      "Coi Osmangazi(Hamitler Mah.)",
                    ),
                    _mudavim(
                      "lib/carousel/2.jpg",
                      "Mossarella(Yenibağlar Mah.)",
                    ),
                    _mudavim(
                      "lib/carousel/3.jpg",
                      "Keyif Restaurant & Cafe (Hamitler Mah.)",
                    ),
                    _mudavim(
                      "lib/carousel/4.jpg",
                      "Lilya Pastane & Cafe(Yunuseli Mah.)",
                    ),
                    _mudavim(
                      "lib/carousel/5.jpg",
                      "Doyum Pide & Lahmacun(Emek Mah.)",
                    ),
                  ],
                ),
              ),
            ),
          ),
          // row - mutfaklar :
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mutfaklar",
                  style: TextStyle(fontSize: 18),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _mutfak("lib/yemekler/doner.jpg", "Döner"),
                  _mutfak("lib/yemekler/cig.jpg", "Çiğ Köfte"),
                  _mutfak("lib/yemekler/kokorec.jpg", "Kokoreç"),
                  _mutfak("lib/yemekler/piav.jpg", "Pilav"),
                  _mutfak("lib/yemekler/pizza.jpg", "pizza"),
                  _mutfak("lib/yemekler/pide.jpg", "Pide"),
                  _mutfak("lib/yemekler/lahmacun.jpg", "Lahmacun"),
                ],
              ),
            ),
          ),

          // column - tüm restoranlar
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Row(
              children: [
                Text(
                  "Tüm Restoranlar(58)",
                  style: TextStyle(fontSize: 17),
                ),
                Spacer(),
                Text(
                  "Görünüm",
                  style: TextStyle(color: Colors.grey[700], fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.menu_open_outlined,
                    color: getirMoru,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          // restaurant containers :
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: _restoranlar("lib/yemekler/doner.jpg",
                "Hot Döner, Osmangazi", "35-45 dk Min. ₺40", 4.7, 100),
          ),
          _restoranlar("lib/yemekler/cig.jpg", "Komagene Çiğ Köfte, Nilüfer",
              "30-45 dk Min. ₺15", 4.9, 200),
          _restoranlar("lib/yemekler/kokorec.jpg", "Midyeci Ahmeti FSM Bulvarı",
              "55-65 dk Min. ₺75", 4.8, 150),
          _restoranlar("lib/yemekler/piav.jpg", "Casa Del Arroz,FSM Bulvarı",
              "30-40 dk Min. ₺95", 4.1, 300),
          _restoranlar(
              "lib/yemekler/pizza.jpg",
              "Little Caesars, Nilüfer         ",
              "25-35 dk Min. ₺59,90",
              4.5,
              700),
          _restoranlar("lib/yemekler/pide.jpg", "Doyum Pide   , Osmangazi",
              "45-55 dk Min. ₺60", 4.0, 650),
          _restoranlar("lib/yemekler/lahmacun.jpg", "İclal Lahmacun, Osmangazi",
              "15-25 dk Min. ₺30", 3.7, 900),

          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }

  Widget _restoranlar(
          String fotograf, String isim, String dk, double puan, int adet) =>
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Container(
          height: 90,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 6,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ilk kısım ::
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: AssetImage("$fotograf"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // ikinci kısım ::
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$isim",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("$dk"),
                    ),
                  ],
                ),
              ),
              // üçüncü kısım ::
              Align(
                alignment: Alignment.topRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // 3.1 kısım :
                    Padding(
                      padding: const EdgeInsets.only(right: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: getirMoru,
                            ),
                            Text(
                              "$puan",
                              style: TextStyle(
                                  color: getirMoru,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "($adet+)",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // 3.2 kısım :
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 15),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _mutfak(String foto, String yemekIsim) => Padding(
        padding: const EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(15)),
          height: 75,
          width: 100,
          child: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 100,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        image: AssetImage("$foto"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text("$yemekIsim"),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _mudavim(String gorsel, String dukkan) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 14),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: AssetImage("$gorsel"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  "$dukkan",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cards(Icon icon, String txt) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Container(
        height: 60,
        width: 95,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text("$txt"),
          ],
        ),
      ),
    );
  }
}
