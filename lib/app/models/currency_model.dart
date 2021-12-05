class CurrencyModel {
  final String name;

  CurrencyModel({this.name,});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
        name: 'Real', 
      ),
      CurrencyModel(
        name: 'Dolar', //USDC
      ),
      CurrencyModel(
        name: 'Bitcoin', //BTC
      ),
      CurrencyModel(
        name: 'Litecoin', //LTC
      ),
      CurrencyModel(
        name: 'Cardano', //ADA
      ),
      CurrencyModel(
        name: 'Uniswap', //UNI
      ),
    ];
  }
}
