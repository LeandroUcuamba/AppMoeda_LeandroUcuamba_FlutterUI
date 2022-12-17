
import 'package:flutter/material.dart';
import 'package:leandroucuamba_app/app/models/currency_model.dart';

class HomeController{

TextEditingController toText = TextEditingController();
TextEditingController fromText = TextEditingController();

late List<CurrencyModel> currencies;
late  CurrencyModel toCurrency;
late  CurrencyModel fromCurrency;

  HomeController({required TextEditingController fromText, required TextEditingController toText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  } 

  /*Agora vamos fazer a segunda regra de negocio, a primeira
  é a model 'que é aquilo que o usuario irá passar' esta segunda
  é a parte feita pelo computador.
  */
  
  void Convert(){
     
     String text = toText.text;
     double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
     double returnValue = 0;

     if(fromCurrency.name == 'Kwanza'){
        returnValue = value * toCurrency.kwanza; 
     }
     if(fromCurrency.name == 'Dolar'){
        returnValue = value * toCurrency.dolar; 
     }
     if(fromCurrency.name == 'Euro'){
        returnValue = value * toCurrency.euro; 
     }
     else if(fromCurrency.name == 'Bitcoin'){
        returnValue = value * toCurrency.bitcoin; 
     }

     fromText.text = returnValue.toStringAsFixed(2);
     print(fromText.text = returnValue.toStringAsFixed(2));

  }
}