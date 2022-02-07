import 'package:flutter/material.dart';
import 'GetirYemek.dart';

class GetirYemekKullanici extends StatefulWidget {
  const GetirYemekKullanici({Key? key}) : super(key: key);

  @override
  _GetirYemekKullaniciState createState() => _GetirYemekKullaniciState();
}

class _GetirYemekKullaniciState extends State<GetirYemekKullanici> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // üst panel
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  height: 150,
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
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.person_pin_circle_sharp,
                                size: 50,
                                color: getirMoru,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Alikper İslam",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail_outline,
                                size: 30,
                                color: getirMoru,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "developer.alikper@gmail.com",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone_android,
                                size: 30,
                                color: getirMoru,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "+90 (530) 000 00 00",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 18),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 30,
                                  width: 110,
                                  child: Center(
                                    child: Text(
                                      "Tekrar Gönder!",
                                      style: TextStyle(color: getirMoru),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 2.0, color: getirMoru),
                                      left: BorderSide(
                                          width: 2.0, color: getirMoru),
                                      right: BorderSide(
                                          width: 2.0, color: getirMoru),
                                      bottom: BorderSide(
                                          width: 2.0, color: getirMoru),
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 6,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 355),
                child: Container(
                  height: 40,
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
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 0),
                      child: Icon(
                        Icons.add_box_outlined,
                        color: getirMoru,
                      )),
                ),
              ),
            ],
          ),
          // alt panel :
          Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: Container(
              height: 115,
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
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13, left: 10),
                        child: Icon(
                          Icons.card_giftcard_outlined,
                          size: 30,
                          color: getirMoru,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "GetirYemek Müdavim",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "GetirYemek kullanıcıları sipariş verildikçe\n'Müdavim' oluyor, seçili restoranlardan\nher 3 siparişe 1 hediye sipariş kazanıyor!",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: getirMoru,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          // alt alta sıralı elemanlar:
          _sirali(
              Icon(
                Icons.add_location_sharp,
                size: 30,
                color: getirMoru,
              ),
              "Adreslerim"),
          _sirali(
              Icon(
                Icons.favorite,
                size: 30,
                color: getirMoru,
              ),
              "Favori Restoranlarım"),
          _sirali(
              Icon(
                Icons.vpn_key,
                size: 30,
                color: Colors.orange[400],
              ),
              "Geçmiş siparişlerim"),
          _sirali(
              Icon(
                Icons.credit_card,
                size: 30,
                color: getirMoru,
              ),
              "Ödeme Yöntemlerim"),
          _sirali(
              Icon(
                Icons.message_outlined,
                size: 30,
                color: getirMoru,
              ),
              "İletişim Tercihleri"),
          _sirali(
              Icon(
                Icons.lock_clock_rounded,
                size: 30,
                color: getirMoru,
              ),
              "Giriş Ayarları"),
          _sirali(
              Icon(
                Icons.info_outline,
                size: 30,
                color: getirMoru,
              ),
              "Yardım"),
          _sirali(
              Icon(
                Icons.exit_to_app_outlined,
                size: 30,
                color: Colors.orange[400],
              ),
              "Çıkış Yap"),
          // dil ve versiyon ayarları için :
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Language - Dil",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _sirali(
              Icon(
                Icons.language,
                size: 30,
                color: getirMoru,
              ),
              "Türkçe"),

          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }

  Padding _sirali(Icon ico, String isim) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Container(
        height: 60,
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
          padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: const EdgeInsets.only(top: 13, left: 10),
                    child: ico),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "$isim",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 50),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: getirMoru,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
