import 'package:flutter/material.dart';

class PayButtonsWidget extends StatefulWidget {
  @override
  _PayButtonsWidgetState createState() => _PayButtonsWidgetState();
}

class _PayButtonsWidgetState extends State<PayButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey[200], width: 1)),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_productsCount(), _productPrice()],
      ),
    );
  }
}

Widget _productsCount() {
  return Container(
    width: 130,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey, width: 1)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            icon: Icon(
              Icons.remove,
              color: Colors.grey,
            ),
            onPressed: () {
              print('remover');
            }),
        Text('1'),
        IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.red,
            ),
            onPressed: () {
              print('Añadir');
            })
      ],
    ),
  );
}

Widget _productPrice() {
  return RaisedButton(
    padding: EdgeInsets.all(15),
    textColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    color: Colors.red,
    child: Text(
      'Agregar 12.300.00',
      style: TextStyle(fontSize: 18),
    ),
    onPressed: () {},
  );
}
