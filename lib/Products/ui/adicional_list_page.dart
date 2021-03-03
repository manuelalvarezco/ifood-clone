import 'package:flutter/material.dart';

import 'adicional_product_page.dart';

class AdicionalListPage extends StatelessWidget {
  // Imputs
  String adicionalTitle = 'Desea algún adicional';
  String textOption = 'Elige hasta 9 opciones';
  AdicionalListPage(@required this.adicionalTitle, @required this.textOption);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  adicionalTitle,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(textOption),
              ],
            ),
          ),
          AdicionalProductPage('Queso Mozzarella', '+ 3.500.00'),
          Divider(),
          AdicionalProductPage('Queso Mozzarella', '+ 3.500.00'),
          Divider(),
          AdicionalProductPage('Queso Mozzarella', '+ 3.500.00'),
          Divider(),
          AdicionalProductPage('Queso Mozzarella', '+ 3.500.00'),
          Divider(),
        ],
      ),
    );
  }
}
