class CurrencyModel{
      final String name;
      final double kwanza;
      final double dolar;
      final double euro;
      final double bitcoin;

  CurrencyModel({required this.name,required  this.kwanza,required  this.dolar,required  this.euro,required  this.bitcoin});

  static List<CurrencyModel> getCurrencies(){
      return <CurrencyModel>[
          
          CurrencyModel(name: 'Kwanza', kwanza: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016),
          CurrencyModel(name: 'Dolar', kwanza: 5.65, dolar: 1.0, euro: 0.85, bitcoin: 0.000088),
          CurrencyModel(name: 'Euro', kwanza: 6.62, dolar: 1.17, euro: 1.0, bitcoin: 0.00010),
          CurrencyModel(name: 'Bitcoin', kwanza: 64116.51, dolar: 11351.30, 
          euro: 9689.54, bitcoin: 1),

      ];
  }

}