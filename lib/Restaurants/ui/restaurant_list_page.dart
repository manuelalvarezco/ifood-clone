import 'package:flutter/material.dart';

class RestaurantListPage extends StatefulWidget {
  @override
  _RestaurantListPageState createState() => _RestaurantListPageState();
}

class _RestaurantListPageState extends State<RestaurantListPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Restaurantes',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        _restaurant(
            'https://logos-marcas.com/wp-content/uploads/2020/04/McDonalds-Logo.png',
            'McDonald´s (CC. Fundadores)',
            'Hamburguesas 2,2 km',
            '28-38',
            '4.200.00'),
        _restaurant(
            'https://laherradura.com.co/wp-content/uploads/2020/08/frisby.png',
            'Frisby (Cable Plaza) - F46',
            'Pollo 2,2 km',
            '39-49',
            '4.100.00'),
        _restaurant(
            'https://unicentrodearmenia.com/wp-content/uploads/2018/06/Logo-popsy-Tipo-1.png',
            'Popsy (CC. Fundadores)',
            'Postres 2,2 km',
            '17-27',
            '4.200.00'),
        _restaurant(
            'https://www.caminoreal.com.co/wp-content/uploads/2019/12/Presto-1.png',
            'Presto (Cable Plaza)',
            'Hamburguesas 2,2 km',
            '28-38',
            '4.200.00'),
        _restaurant(
            'https://es.logodownload.org/wp-content/uploads/2018/10/subway-logo1.png',
            'Subway Manizales',
            'Sandwiches 2,2 km',
            '19-29',
            '4.200.00'),
      ],
    );
  }
}

_restaurant(pathImage, title, category, time, price) {
  return Container(
    height: 120,
    padding: EdgeInsets.only(top: 5, bottom: 5),
    child: Card(
        child: ListTile(
      leading: FadeInImage(
        width: 80,
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: NetworkImage(pathImage),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
                size: 15,
              ),
              Text('4,4',
                  style: TextStyle(color: Colors.orange[900], fontSize: 12)),
              SizedBox(
                width: 10,
              ),
              Text(
                category,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('Rasteable $time min $price', style: TextStyle(fontSize: 12))
        ],
      ),
    )),
  );
}
