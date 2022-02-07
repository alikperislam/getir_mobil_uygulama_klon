import 'package:flutter/material.dart';

import 'GetirYemek.dart';

class GetirYemekHediye extends StatefulWidget {
  const GetirYemekHediye({Key? key}) : super(key: key);

  @override
  _GetirYemekHediyeState createState() => _GetirYemekHediyeState();
}

class _GetirYemekHediyeState extends State<GetirYemekHediye> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(1),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              child: Column(
                children: [
                  // üst kısım :
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.purple[50],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 60,
                          width: size.width / 3.5,
                          child: Center(
                            child: Text(
                              "Müdavim",
                              style: TextStyle(color: getirMoru, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 60,
                          width: size.width / 3.5,
                          child: Center(
                            child: Text(
                              "Promosyon",
                              style: TextStyle(color: getirMoru, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 60,
                          width: size.width / 3.5,
                          child: Center(
                            child: Text(
                              "Duyurular",
                              style: TextStyle(color: getirMoru, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // kampanya Container'ı :
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
            child: Text(
              "Tüm Kampanyalar",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          _mudavim(),
        ],
      ),
    );
  }

  Widget _mudavim() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              //image:
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image(
                    image: AssetImage("lib/gorseller/x1.jpg"),
                  ),
                ),
              ),
              //column:
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "GetirYemek Müdavim",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "3 siparişe 1 sipariş hediye!",
                      style: TextStyle(color: Colors.black),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 70,
                          decoration: BoxDecoration(
                              color: getirMoru,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            height: 10,
                            width: 70,
                            decoration: BoxDecoration(
                                color: getirMoru,
                                borderRadius: BorderRadius.circular(3)),
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ],
                    ),
                    Text(
                      "Siparişinizi verin, yedikçe kazanın!",
                      style: TextStyle(color: getirMoru),
                    ),
                    Text(
                      "Subat ayı boyunca",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              //column:
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: getirMoru,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 36, bottom: 2),
                      child: Icon(
                        Icons.card_giftcard_sharp,
                        color: getirMoru,
                      ),
                    ),
                    Text("2/3"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
