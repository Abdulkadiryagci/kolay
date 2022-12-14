import 'package:flutter/material.dart';
import 'package:kolay_arapca_yeniden/data/strings.dart';
import 'package:kolay_arapca_yeniden/kelime_detay.dart';
import 'package:kolay_arapca_yeniden/kelime_item.dart';
import 'package:kolay_arapca_yeniden/model/kelime.dart';

class Malzemeler extends StatelessWidget {
  late List<Kelime> tumKelime;
  Malzemeler() {
    tumKelime = veriKaynaginiHazirla();
    print(tumKelime);
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(title: Text("Malzemeler")),
        body: Center(
            child: ListView.builder(
          itemBuilder: ((context, index) {
            return InkWell(
                onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => KelimeDetay(
                          tumKelimeler: tumKelime,
                          pageIndex: index,
                        ),
                      ),
                    ),
                child: KelimeItem(listelenenKelime: tumKelime[index]));
          }),
          itemCount: tumKelime.length,
        ),
        ),);
  }

  List<Kelime> veriKaynaginiHazirla() {
    List<Kelime> gecici = [];
    for (int i = 0; i < 15; i++) {
      var kelimeAdi = Malzemelers.KELIME_ADLARI[i];
      var kelimeResmi = Malzemelers.KELIME_RESIMLERI[i];
      var kelimeAnlami = Malzemelers.KELIME_ANLAMLARI[i];
      var kelimeSesi = Malzemelers.KELIME_SESLERI[i];
      Kelime eklenecekKelime =
          Kelime(kelimeAnlami, kelimeAdi, kelimeResmi, kelimeSesi);
      gecici.add(eklenecekKelime);
    }
    return gecici;
  }
}
