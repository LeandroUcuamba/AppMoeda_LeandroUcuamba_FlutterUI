import 'package:flutter/material.dart';
import 'package:leandroucuamba_app/app/models/currency_model.dart';


class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel? model) onChanged;

  const CurrencyBox({super.key, required this.items, required this.controller, required this.onChanged, required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 65,
                        child: DropdownButton<CurrencyModel>(
                          iconEnabledColor: Colors.amber,
                          isExpanded: true,
                          value: selectedItem,
                          underline: Container(
                            height: 1,
                            color: Colors.amber
                          ),
                          items: items.map((e) => DropdownMenuItem(value: e, child: Text(e.name))).toList(),
                           onChanged: onChanged,
                          ),
                        ),
                      ),

                    SizedBox(width: 13,),


                    Expanded(
                      flex: 2,
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                          ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)
                          )),
                          ),
                      ), 
                ],
              );
    
  }
}