import 'package:flutter/material.dart';
import 'package:ifood_clone/Plates/ui/plate_list_page.dart';
import 'package:ifood_clone/Restaurants/ui/restaurant_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 60, right: 10, left: 10),
      children: [
        Row(
          children: [
            _searchBar(context),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Filtros',
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
        PlateListPage(),
        RestaurantListPage()
      ],
    ));
  }
}

Widget _searchBar(BuildContext context) {
  final _screenSize = MediaQuery.of(context).size;

  return Container(
    width: _screenSize.width * 0.75,
    decoration: BoxDecoration(
      color: Color(0xFF979797).withOpacity(0.1),
      borderRadius: BorderRadius.circular(3),
    ),
    child: TextField(
      textAlign: TextAlign.center,
      onChanged: (value) => print(value),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(context, 20),
              vertical: getProportionateScreenWidth(context, 15)),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: "Platillo o restaurante",
          prefixIcon: Icon(
            Icons.search,
            color: Colors.red,
          )),
    ),
  );
}

double getProportionateScreenWidth(context, double inputWidth) {
  final _screenSize = MediaQuery.of(context).size;

  double screenWidth = _screenSize.width;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
