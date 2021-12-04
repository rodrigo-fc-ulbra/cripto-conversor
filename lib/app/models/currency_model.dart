class CurrencyModel {
  final String name;

  final double real;
  final double dolar; //USDC
  final double bitcoin; //BTC
  final double litecoin; //LTC
  final double cardano; //ADA
  final double uniswap; //UNI

  CurrencyModel({
      this.name,
      this.real,
      this.dolar,
      this.bitcoin,
      this.litecoin,
      this.cardano,
      this.uniswap
  });

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real',
          real: 1.0,
          dolar: 0.18,
          bitcoin: 0.15,
          litecoin: 0.17,
          cardano: 1.4,
          uniswap: 0.5),
      CurrencyModel(
          name: 'Dolar',
          real: 1.0,
          dolar: 0.18,
          bitcoin: 0.15,
          litecoin: 0.17,
          cardano: 1.4,
          uniswap: 0.5),
      CurrencyModel(
          name: 'Bitcoin',
          real: 1.0,
          dolar: 0.18,
          bitcoin: 0.15,
          litecoin: 0.17,
          cardano: 1.4,
          uniswap: 0.5),
      CurrencyModel(
          name: 'Litecoin',
          real: 1.0,
          dolar: 0.18,
          bitcoin: 0.15,
          litecoin: 0.17,
          cardano: 1.4,
          uniswap: 0.5),
      CurrencyModel(
          name: 'Cardano',
          real: 1.0,
          dolar: 0.18,
          bitcoin: 0.15,
          litecoin: 0.17,
          cardano: 1.4,
          uniswap: 0.5),
      CurrencyModel(
          name: 'Uniswap',
          real: 1.0,
          dolar: 0.18,
          bitcoin: 0.15,
          litecoin: 0.17,
          cardano: 1.4,
          uniswap: 0.5),
    ];
  }
}
