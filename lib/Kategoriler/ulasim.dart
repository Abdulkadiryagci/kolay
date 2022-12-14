import 'package:flutter/material.dart';
import 'package:kolay_arapca_yeniden/data/strings.dart';
import 'package:kolay_arapca_yeniden/kelime_detay.dart';
import 'package:kolay_arapca_yeniden/kelime_item.dart';
import 'package:kolay_arapca_yeniden/model/kelime.dart';

class Ulasim extends StatelessWidget {
  late List<Kelime> tumRenkler;
  Ulasim() {
    tumRenkler = veriKaynaginiHazirla();
    print(tumRenkler);
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(title: Text("Ulaşım Araçları")),
        body: Center(
            child: ListView.builder(
          itemBuilder: ((context, index) {
            return InkWell(
                onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => KelimeDetay(
                          tumKelimeler: tumRenkler,
                          pageIndex: index,
                        ),
                      ),
                    ),
                child: KelimeItem(listelenenKelime: tumRenkler[index]));
          }),
          itemCount: tumRenkler.length,
        ),
        ),);
  }

  List<Kelime> veriKaynaginiHazirla() {
    List<Kelime> gecici = [];
    for (int i = 0; i < 21; i++) {
      var kelimeAdi = Ulasims.KELIME_ADLARI[i];
      var kelimeResmi = Ulasims.KELIME_RESIMLERI[i];
      var kelimeAnlami = Ulasims.KELIME_ANLAMLARI[i];
      var kelimeSesi = Ulasims.KELIME_SESLERI[i];
      Kelime eklenecekKelime =
          Kelime(kelimeAnlami, kelimeAdi, kelimeResmi, kelimeSesi);
      gecici.add(eklenecekKelime);
    }
    return gecici;
  }
}
