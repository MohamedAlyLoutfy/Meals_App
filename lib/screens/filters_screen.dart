import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';
class FiltersScreen  extends StatefulWidget {
  static const routeName='/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree=false;
  bool _vegetarian=false;
  bool _vegan=false;
  bool _lactoseFree=false;
  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updatevalue)
    {
    return    SwitchListTile(
                title: Text(title),
                value: currentValue,
                subtitle: Text(description,),
                 onChanged: updatevalue,
                 );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Your filters',
          ) ,
          ),
          drawer: MainDrawer(),
      body: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'adjust your meal selection',
            style: Theme.of(context).textTheme.title,

          ),
        ),
        Expanded(
          child:ListView(
            children: <Widget>[
              _buildSwitchListTile(
                'Gluten-Free',
                 'Only include gluten free meals',
                  _glutenFree,
                  (newValue){
                    setState(() {
                      _glutenFree=newValue;
                    });
                  },
                   ),

                    _buildSwitchListTile(
                'Lactose free',
                 'Only include lactose free meals',
                  _lactoseFree,
                  (newValue){
                    setState(() {
                      _lactoseFree=newValue;
                    });
                  },
                   ),

                    _buildSwitchListTile(
                'Vegeterian',
                 'Only include vegeterian free meals',
                  _vegetarian,
                  (newValue){
                    setState(() {
                      _vegetarian=newValue;
                    });
                  },
                   ),

                    _buildSwitchListTile(
                'vegan',
                 'Only include vegan free meals',
                  _vegan,
                  (newValue){
                    setState(() {
                      _vegan=newValue;
                    });
                  },
                   ),

           




            ],

          )
          ),


      ],
      
    ),
    );
  }
}