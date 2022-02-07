import 'package:flutter/material.dart';
import 'main.dart';

class GetirYemekArama extends StatefulWidget {
  const GetirYemekArama({Key? key}) : super(key: key);

  @override
  _GetirYemekAramaState createState() => _GetirYemekAramaState();
}

Color _getirMoru = getirMoru;
Color arkaPlan = Color(0xFFF5F5F5);

class _GetirYemekAramaState extends State<GetirYemekArama> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          // search bar :
          Container(
            height: 50,
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
              borderRadius: BorderRadius.circular(1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                    color: getirMoru,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Canınız ne çekiyor?",
                      style: TextStyle(color: Colors.grey[600], fontSize: 18),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.mic,
                    size: 30,
                    color: getirMoru,
                  )
                ],
              ),
            ),
          ),
          // arama geçmişi :
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Row(
              children: [
                Text(
                  "Arama Geçmişi",
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                Icon(
                  Icons.delete,
                  size: 30,
                ),
              ],
            ),
          ),
          // arama geçmişi containerlar :
          _arama("Cajun Corner"),
          _arama("Şandede Pizza"),
          _arama("Öküz Efendi"),
          // zincir restoranlar text :
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Row(
              children: [
                Text(
                  "Zincir Restoranlar",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          // zincir restoranlar Row'u :
          Container(
            height: 60,
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
              borderRadius: BorderRadius.circular(1),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _zincir(
                      "Burger King",
                      "Domino's Pizza",
                      "McDonald's",
                      "KFC",
                      "Popeyes",
                      "Starbucks",
                      "Komagene",
                      "Pasaport Pizza",
                      "Kahve Dünyası",
                      "HD İskender"),
                ],
              ),
            ),
          ),
          //mutfaklar:
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
        ],
      ),
    );
  }

  Widget _zincir(
    a1,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9,
    a10,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a1",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a2",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a3",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a4",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a5",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a6",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a7",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a8",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a9",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "$a10",
                    style: TextStyle(color: getirMoru, fontSize: 17),
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

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

  Widget _arama(String arama) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Container(
        height: 50,
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
          borderRadius: BorderRadius.circular(1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
          child: Row(
            children: [
              Text(
                "$arama",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
