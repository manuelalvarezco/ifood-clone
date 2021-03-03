import 'package:flutter/material.dart';

class ProductPlacePage extends StatelessWidget {
  String namePlace = 'Restaurante la sacristía';
  String minutsPlace = '53-63 min';

  ProductPlacePage(@required this.namePlace, @required this.minutsPlace);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      child: ListTile(
        leading: Icon(
          Icons.store,
          color: Colors.red,
        ),
        title: Text(
          namePlace,
          style: TextStyle(color: Colors.red),
        ),
        trailing: Text(minutsPlace),
      ),
    );
  }
}
