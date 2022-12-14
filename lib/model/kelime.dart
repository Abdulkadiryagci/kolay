class Kelime {
  final String _kelimeAdi;
  final String _kelimeAnlami;
  final String _kelimeResmi;
  final String _kelimeSesi;

  get kelimeAdi => this._kelimeAdi;

// set burcAdi(final value) => this._burcAdi = value;

  get kelimeAnlami => this._kelimeAnlami;

  //set burcTarihi( value) => this._burcTarihi = value;

  get kelimeResmi => this._kelimeResmi;

// set burcDetayi( value) => this._burcDetayi = value;

  get kelimeSesi => this._kelimeSesi;

// set burcKucukResim( value) => this._burcKucukResim = value;

//  get burcBuyukResim => this._burcBuyukResim;

// set burcBuyukResim( value) => this._burcBuyukResim = value;

  Kelime(this._kelimeAdi, this._kelimeAnlami, this._kelimeResmi,this._kelimeSesi);

  get length => null;
  @override
  String toString() {
    // TODO: implement toString
    return "$_kelimeAdi - $_kelimeAnlami- $_kelimeResmi-$_kelimeSesi";
  }
}
