import 'package:flutter/material.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/mutfak.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/okul.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/ulasim.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/zamanlar.dart';
import 'package:kolay_arapca_yeniden/data/strings.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/duygular.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/giyim.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/hava.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/hayvanlar.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/kelimeler.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/malzemeler.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/meslekler.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/meyveler.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/organlar.dart';
import 'package:kolay_arapca_yeniden/Kategoriler/renkler.dart';


class Kategorilers extends StatefulWidget {
  const Kategorilers({Key? key}) : super(key: key);

  @override
  State<Kategorilers> createState() => _KategorilersState();
}

class _KategorilersState extends State<Kategorilers> {
  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text("Kategoriler", textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {});
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Kelimeler(),
                        ),
                      );
                    },
                    leading: Image.asset("assets/images/sayi.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[0]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text("${Kategoriler.KELIME_ANLAMLARI[0]}",
                        textAlign: TextAlign.center,
                        style: myTextStyle.headline4),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {});
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Renkler(),
                        ),
                      );
                    },
                    leading: Image.asset("assets/images/renkler.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[1]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text("${Kategoriler.KELIME_ANLAMLARI[1]}",
                        textAlign: TextAlign.center,
                        style: myTextStyle.headline4),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Hayvanlar(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/hayvanlar.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[2]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text("${Kategoriler.KELIME_ANLAMLARI[2]}",
                        textAlign: TextAlign.center,
                        style: myTextStyle.headline4),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Meyveler(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/meyve.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[3]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text(
                      "${Kategoriler.KELIME_ANLAMLARI[3]}",
                      textAlign: TextAlign.center,
                      style: myTextStyle.headline4,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Meslekler(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/meslekler.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[4]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text("${Kategoriler.KELIME_ANLAMLARI[4]}",
                        textAlign: TextAlign.center,
                        style: myTextStyle.headline4),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Malzemeler(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/malzeme.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[5]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text("${Kategoriler.KELIME_ANLAMLARI[5]}",
                        textAlign: TextAlign.center,
                        style: myTextStyle.headline4),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Giyim(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/giyim.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[6]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text("${Kategoriler.KELIME_ANLAMLARI[6]}",
                        textAlign: TextAlign.center,
                        style: myTextStyle.headline4),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Duygular(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/emoji.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[7]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text("${Kategoriler.KELIME_ANLAMLARI[7]}",
                        textAlign: TextAlign.center,
                        style: myTextStyle.headline4),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Organlar(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/organlar.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[8]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text("${Kategoriler.KELIME_ANLAMLARI[8]}",
                        textAlign: TextAlign.center,
                        style: myTextStyle.headline4),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Hava(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/hava.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[9]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text(
                      "${Kategoriler.KELIME_ANLAMLARI[9]}",
                      style: myTextStyle.headline4,
                      textAlign: TextAlign.center,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Okul(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/okul.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[10]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text(
                      "${Kategoriler.KELIME_ANLAMLARI[10]}",
                      style: myTextStyle.headline4,
                      textAlign: TextAlign.center,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Ulasim(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/helikopter.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[11]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text(
                      "${Kategoriler.KELIME_ANLAMLARI[11]}",
                      style: myTextStyle.headline4,
                      textAlign: TextAlign.center,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Mutfak(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/mutfak.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[12]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text(
                      "${Kategoriler.KELIME_ANLAMLARI[12]}",
                      style: myTextStyle.headline4,
                      textAlign: TextAlign.center,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Zamanlar(),
                          ),
                        );
                      });
                    },
                    leading: Image.asset("assets/images/ayy.png"),
                    title: Text("${Kategoriler.KELIME_ADLARI[13]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 24)),
                    subtitle: Text(
                      "${Kategoriler.KELIME_ANLAMLARI[13]}",
                      style: myTextStyle.headline4,
                      textAlign: TextAlign.center,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios)),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
