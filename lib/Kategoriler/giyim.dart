import 'package:flutter/material.dart';
import 'package:kolay_arapca_yeniden/data/strings.dart';
import 'package:kolay_arapca_yeniden/kelime_detay.dart';
import 'package:kolay_arapca_yeniden/kelime_item.dart';
import 'package:kolay_arapca_yeniden/model/kelime.dart';

class Giyim extends StatelessWidget {
  late List<Kelime> tumGiyim;
  Giyim() {
    tumGiyim = veriKaynaginiHazirla();
    print(tumGiyim);
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(title: Text("Giyim")),
        body: Center(
            child: ListView.builder(
          itemBuilder: ((context, index) {
            return InkWell(
                onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => KelimeDetay(
                          tumKelimeler: tumGiyim,
                          pageIndex: index,
                        ),
                      ),
                    ),
                child: KelimeItem(listelenenKelime: tumGiyim[index]));
          }),
          itemCount: tumGiyim.length,
        ),
        ),);
  }

  List<Kelime> veriKaynaginiHazirla() {
    List<Kelime> gecici = [];
    for (int i = 0; i < 15; i++) {
      var kelimeAdi = Giyims.KELIME_ADLARI[i];
      var kelimeResmi = Giyims.KELIME_RESIMLERI[i];
      var kelimeAnlami = Giyims.KELIME_ANLAMLARI[i];
      var kelimeSesi = Giyims.KELIME_SESLERI[i];
      Kelime eklenecekKelime =
          Kelime(kelimeAnlami, kelimeAdi, kelimeResmi, kelimeSesi);
      gecici.add(eklenecekKelime);
    }
    return gecici;
  }
}
