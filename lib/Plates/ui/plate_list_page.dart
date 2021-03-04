import 'package:flutter/material.dart';
import 'package:ifood_clone/Plates/ui/plate_page.dart';

class PlateListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cocinas',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 140,
            padding: EdgeInsets.only(right: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PlatePage(
                    'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    'Ensaladas'),
                PlatePage(
                    'https://images.unsplash.com/photo-1534256958597-7fe685cbd745?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
                    'Pescado'),
                PlatePage(
                    'https://images.unsplash.com/photo-1432139555190-58524dae6a55?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80',
                    'Carne'),
                PlatePage(
                    'https://images.unsplash.com/photo-1566393028639-d108a42c46a7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=727&q=80',
                    'Frutas'),
                PlatePage(
                    'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
                    'Pizza'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
