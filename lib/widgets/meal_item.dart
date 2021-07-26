import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Models/meal.dart';

class MealItem extends StatelessWidget {
  @required final String title;
  @required final String imageUrl;
  @required final int duration;
  @required final Complexity complexity;
  @required final Affordability affordability;
  MealItem({
    this.title, this.imageUrl, this.duration, this.complexity,
      this.affordability});

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  
                  
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
