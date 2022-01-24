import 'package:flutter/material.dart';
import 'package:segunda_clase/recipe.dart';
import 'package:segunda_clase/recipe_detail.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext contex, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(contex)
                    .push(MaterialPageRoute(builder: (BuildContext contex) {
                  return RecipeDetail(recipe: Recipe.samples[index]);
                }));
              },
              child: RecipeCard(recipe: Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  const RecipeCard({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              recipe.label,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palatino'),
            )
          ],
        ),
      ),
    );
  }
}
