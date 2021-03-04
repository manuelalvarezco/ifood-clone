import 'package:flutter/material.dart';
import 'package:ifood_clone/Home/ui/home_page.dart';
import 'package:ifood_clone/Products/ui/product_page.dart';

class RoutePage extends StatefulWidget {
  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [HomePage(), ProductPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
            ],
          )),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }
}
