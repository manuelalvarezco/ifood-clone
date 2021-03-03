import 'package:flutter/material.dart';

class AdicionalProductPage extends StatelessWidget {
  String productTitle = 'Queso Mozzarella';
  String productPrice = '+ 3.500.00';
  AdicionalProductPage(
      @required this.productTitle, @required this.productPrice);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productTitle,
                  style: TextStyle(fontSize: 18),
                ),
                Text(productPrice)
              ],
            ),
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.red,
                ),
                onPressed: () {
                  print('Añadir');
                })
          ],
        ));
  }
}
