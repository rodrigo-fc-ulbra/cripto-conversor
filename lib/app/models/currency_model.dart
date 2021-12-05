class CurrencyModel {
  final String name;

  final double real;
  final double dolar; //USDC
  final double bitcoin; //BTC
  final double litecoin; //LTC
  final double cardano; //ADA
  final double uniswap; //UNI

  CurrencyModel(
      {this.name,
      this.real,
      this.dolar,
      this.bitcoin,
      this.litecoin,
      this.cardano,
      this.uniswap});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
        name: 'Real',
      ),
      CurrencyModel(
        name: 'Dolar',
      ),
      CurrencyModel(
        name: 'Bitcoin',
      ),
      CurrencyModel(
        name: 'Litecoin',
      ),
      CurrencyModel(
        name: 'Cardano',
      ),
      CurrencyModel(
        name: 'Uniswap',
      ),
    ];
  }
}
