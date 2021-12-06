import 'package:flutter/material.dart';
import 'package:segunda_clase/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                height: 300.0,
                width: double.infinity,
                child: Image(image: AssetImage(widget.recipe.imageUrl))),
            const SizedBox(
              height: 14.0,
            ),
            const Text('Ingredientes'),
            Expanded(
                child: ListView.builder(
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final ingredient = widget.recipe.ingredients[index];
                return Text(
                    '${ingredient.quantity * _sliderValue} ${ingredient.measure} ${ingredient.name}');
              },
            )),
            Slider(
              min: 1,
              max: 10,
              divisions: 9,
              value: _sliderValue.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue.round();
                });
              },
              activeColor: Colors.blue,
              inactiveColor: Colors.black,
              label: '${_sliderValue * widget.recipe.servings} unidades',
            )
          ],
        ),
      ),
    );
  }
}
