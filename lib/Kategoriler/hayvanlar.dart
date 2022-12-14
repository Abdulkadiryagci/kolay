import 'package:flutter/material.dart';
import 'package:kolay_arapca_yeniden/data/strings.dart';
import 'package:kolay_arapca_yeniden/kelime_detay.dart';
import 'package:kolay_arapca_yeniden/kelime_item.dart';
import 'package:kolay_arapca_yeniden/model/kelime.dart';

class Hayvanlar extends StatelessWidget {
  late List<Kelime> tumHayvanlar;
  Hayvanlar() {
    tumHayvanlar = veriKaynaginiHazirla();
    print(tumHayvanlar);
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(title: Text("Hayvanlar")),
        body:Center(
            child: ListView.builder(
          itemBuilder: ((context, index) {
            return InkWell(
                onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => KelimeDetay(
                          tumKelimeler: tumHayvanlar,
                          pageIndex: index,
                        ),
                      ),
                    ),
                child: KelimeItem(listelenenKelime: tumHayvanlar[index]));
          }),
          itemCount: tumHayvanlar.length,
        ),
        ),
        );
  }

  List<Kelime> veriKaynaginiHazirla() {
    List<Kelime> gecici = [];
    for (int i = 0; i < 23; i++) {
      var kelimeAdi = Hayvanlars.KELIME_ADLARI[i];
      var kelimeResmi = Hayvanlars.KELIME_RESIMLERI[i];
      var kelimeAnlami = Hayvanlars.KELIME_ANLAMLARI[i];
      var kelimeSesi = Hayvanlars.KELIME_SESLERI[i];
      Kelime eklenecekKelime =
          Kelime(kelimeAnlami, kelimeAdi, kelimeResmi, kelimeSesi);
      gecici.add(eklenecekKelime);
    }
    return gecici;
  }
}
