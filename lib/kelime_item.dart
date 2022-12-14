
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kolay_arapca_yeniden/model/kelime.dart';

class KelimeItem extends StatefulWidget {
  final Kelime listelenenKelime;
  const KelimeItem({required this.listelenenKelime, Key? key})
      : super(key: key);

  @override
  State<KelimeItem> createState() => _KelimeItemState();
}

class _KelimeItemState extends State<KelimeItem> {


  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 12,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            leading: Image.asset(
              "${widget.listelenenKelime.kelimeResmi}",
            ),
            title: Text(
              widget.listelenenKelime.kelimeAnlami,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
            subtitle: Text(widget.listelenenKelime.kelimeAdi,
                textAlign: TextAlign.center, style: myTextStyle.headline4),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
