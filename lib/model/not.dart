class Not {
  final String _notAdi;
  final String _notTarihi;
  final String _notDetay;

  get notAdi => this._notAdi;

  get notTarihi => this._notTarihi;

  get notDetay => this._notDetay;

  Not(this._notAdi, this._notTarihi, this._notDetay);

  @override
  String toString() {
    return '$_notAdi';
  }
}
