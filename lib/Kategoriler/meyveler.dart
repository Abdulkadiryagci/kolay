import 'package:flutter/material.dart';
import 'package:kolay_arapca_yeniden/data/strings.dart';
import 'package:kolay_arapca_yeniden/kelime_detay.dart';
import 'package:kolay_arapca_yeniden/kelime_item.dart';
import 'package:kolay_arapca_yeniden/model/kelime.dart';

class Meyveler extends StatelessWidget {
  late List<Kelime> tumMeyveler;
  Meyveler() {
    tumMeyveler = veriKaynaginiHazirla();
    print(tumMeyveler);
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(title: Text("Meyveler")),
        body: Center(
            child: ListView.builder(
          itemBuilder: ((context, index) {
            return InkWell(
                onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => KelimeDetay(
                          tumKelimeler: tumMeyveler,
                          pageIndex: index,
                        ),
                      ),
                    ),
                child: KelimeItem(listelenenKelime: tumMeyveler[index]));
          }),
          itemCount: tumMeyveler.length,
        ),
        ),);
  }

  List<Kelime> veriKaynaginiHazirla() {
    List<Kelime> gecici = [];
    for (int i = 0; i < 15; i++) {
      var kelimeAdi = Meyvelers.KELIME_ADLARI[i];
      var kelimeResmi = Meyvelers.KELIME_RESIMLERI[i];
      var kelimeAnlami = Meyvelers.KELIME_ANLAMLARI[i];
      var kelimeSesi = Meyvelers.KELIME_SESLERI[i];
      Kelime eklenecekKelime =
          Kelime(kelimeAnlami, kelimeAdi, kelimeResmi, kelimeSesi);
      gecici.add(eklenecekKelime);
    }
    return gecici;
  }
}
