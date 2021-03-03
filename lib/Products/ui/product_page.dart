import 'package:flutter/material.dart';
import 'package:ifood_clone/Products/ui/adicional_list_page.dart';
import 'package:ifood_clone/Products/ui/product_place_page.dart';
import 'package:ifood_clone/Widgets/pay_buttons_widget.dart';

class ProductPage extends StatelessWidget {
  String pathImage =
      'https://images.unsplash.com/photo-1613626630502-182579c0432c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80';

  String productTitle = 'Promo 2 mojarras fritas';

  String productDescription =
      '2 Mojarras fritas. Cada una acompañada de papas a la francesa o patacón, arroz, ensalada y caldo de pescado.';

  String productPrice = '27.000';
  String productPriceOld = ' 32.000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            _cardProduct(context, pathImage, productTitle, productDescription,
                productPrice, productPriceOld),
            ProductPlacePage('Restaurante la sacristía', '53-63 min'),
            AdicionalListPage('Adicionales', 'Elige hasta 9 opciones'),
          ],
        ),
        bottomNavigationBar: PayButtonsWidget());
  }
}

Widget _cardProduct(context, pathImage, productTitle, productDescription,
    productPrice, productPriceOld) {
  final _screenSize = MediaQuery.of(context).size;
  return Card(
    elevation: 0,
    child: Column(
      children: [
        Container(
          height: 180,
          width: _screenSize.width * 0.9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: FadeInImage(
              image: NetworkImage(pathImage),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 250.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productTitle,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  productDescription,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(productPrice,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.bold)),
                    SizedBox(width: 10),
                    Text(productPriceOld, style: TextStyle(fontSize: 14))
                  ],
                )
              ],
            ))
      ],
    ),
  );
}
