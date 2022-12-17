import 'package:flutter/material.dart';
import 'package:leandroucuamba_app/app/controllers/home_controller.dart';
import '../components/currency_box.dart';

class HomeView extends StatefulWidget {

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 final TextEditingController toText = TextEditingController();

 final TextEditingController fromText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    super.initState();

    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

         child: Padding(
           padding: const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
           child: Column(
            children: [
              Image.asset('assets/images/logo.png', width: 200, height:200,),

              CurrencyBox(selectedItem: homeController.toCurrency, 
              controller: toText, items: homeController.currencies, 
              onChanged: (model){
                 setState((){
                   homeController.toCurrency = model!;
                 });

              },),

              CurrencyBox(selectedItem: homeController.fromCurrency, 
              controller: fromText, items: homeController.currencies,
              onChanged: (model){
                  setState((){
                   homeController.fromCurrency = model!;
                 });

              }),
               
              SizedBox(height: 30,),
              
              RaisedButton(
                color: Colors.amber,
                onPressed: (){
                  homeController.Convert();
                },
                child: Text('CONVERTER'), 
                )

            ]),
         ),

       ),

     );
  }
}