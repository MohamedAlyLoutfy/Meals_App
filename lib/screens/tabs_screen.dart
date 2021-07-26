import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/favorites_screen.dart';
class TabsScreen   extends StatefulWidget {
  

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
       child: Scaffold(
         appBar: AppBar(title: Text('Meals'),
         bottom: TabBar(tabs:<Widget>[
           Tab(
             icon: Icon(
               Icons.category,

             ),
             text: 'categories',
           ),
           Tab(
             icon:Icon(
               Icons.star,
             ) ,
             text: 'favorites',
           ),


         ],
         ),
         ),
         body: TabBarView(children: <Widget>[
           CategoriesScreen(),
           FavoritesScreen(),

         ]

         ),
       ),
       );
  }
}