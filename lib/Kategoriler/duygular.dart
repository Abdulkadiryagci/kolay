import 'package:flutter/material.dart';
import 'package:kolay_arapca_yeniden/data/strings.dart';
import 'package:kolay_arapca_yeniden/kelime_detay.dart';
import 'package:kolay_arapca_yeniden/kelime_item.dart';
import 'package:kolay_arapca_yeniden/model/kelime.dart';

class Duygular extends StatelessWidget {
  late List<Kelime> tumDuygular;
  Duygular() {
    tumDuygular = veriKaynaginiHazirla();
    print(tumDuygular);
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(title: Text("Duygular")),
        body: Center(
            child: ListView.builder(
          itemBuilder: ((context, index) {
            return InkWell(
                onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => KelimeDetay(
                          tumKelimeler: tumDuygular,
                          pageIndex: index,
                        ),
                      ),
                    ),
                child: KelimeItem(listelenenKelime: tumDuygular[index]));
          }),
          itemCount: tumDuygular.length,
        ),
        ),);
  }

  List<Kelime> veriKaynaginiHazirla() {
    List<Kelime> gecici = [];
    for (int i = 0; i < 15; i++) {
      var kelimeAdi = Duygulars.KELIME_ADLARI[i];
      var kelimeResmi = Duygulars.KELIME_RESIMLERI[i];
      var kelimeAnlami = Duygulars.KELIME_ANLAMLARI[i];
      var kelimeSesi = Duygulars.KELIME_SESLERI[i];
      Kelime eklenecekKelime =
          Kelime(kelimeAnlami, kelimeAdi, kelimeResmi, kelimeSesi);
      gecici.add(eklenecekKelime);
    }
    return gecici;
  }
}
