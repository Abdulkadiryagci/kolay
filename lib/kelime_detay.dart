import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kolay_arapca_yeniden/model/kelime.dart';

class KelimeDetay extends StatefulWidget {
  final List<Kelime> tumKelimeler;
  final int pageIndex;

  const KelimeDetay(
      {required this.tumKelimeler, required this.pageIndex, Key? key})
      : super(key: key);

  @override
  State<KelimeDetay> createState() => _KelimeDetayState();
}

class _KelimeDetayState extends State<KelimeDetay> {
  late PageController pageController;
  int selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();

    Audio audio = Audio.load(widget.tumKelimeler[widget.pageIndex].kelimeSesi);
    audio.play();
    pageController = PageController(
        initialPage: widget.pageIndex, keepPage: false, viewportFraction: 1);

    pageController.addListener(() {
      setState(() {
        selectedPageIndex = pageController.page!.toInt();
      });
    });

    setToSelectedIndex();
  }

  setToSelectedIndex() {
    setState(() {
      selectedPageIndex = widget.pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;

    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    Audio audio =
                        Audio.load(widget.tumKelimeler[index].kelimeSesi);
                    audio.play();
                  },
                  itemCount: widget.tumKelimeler.length,
                  itemBuilder: (context, index) {
                    Audio audio =
                        Audio.load(widget.tumKelimeler[index].kelimeSesi);
                    return Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Text(
                                  widget.tumKelimeler[index].kelimeAnlami,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      color: Colors.blue,
                                      fontSize: 48,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Image.asset(
                                  "${widget.tumKelimeler[index].kelimeResmi}",
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: ListTile(
                                    title: Text(
                                  widget.tumKelimeler[index].kelimeAdi,
                                  maxLines: 1,
                                  style: myTextStyle.headline3,
                                  textAlign: TextAlign.center,
                                )),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                audio.play();
                                setState(() {});
                              },
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.volume_up,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ]),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      widget.tumKelimeler.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () => pageController.animateToPage(index,
                              duration: const Duration(microseconds: 300),
                              curve: Curves.fastLinearToSlowEaseIn),
                          child: CircleAvatar(
                            backgroundColor: selectedPageIndex == index
                                ? Colors.white
                                : Colors.blue,
                            radius: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
