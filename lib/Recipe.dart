import 'package:flutter/material.dart';

class Recipe {
  final String _dishName;
  final List<String> _ingredients;
  final List<String> _instructions;
  final String _imageUrl;

  Recipe(this._dishName, this._ingredients, this._instructions, this._imageUrl);

  String get image => _imageUrl;

  String get name => _dishName;

  List<String> getIngredients() {
    return _ingredients;
  }

  List<String> getInstructions() {
    return _instructions;
  }
}

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lebanese Recipes',
          style: TextStyle(fontSize: 35, fontFamily: 'OoohBaby'),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 21, 37),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  recipe.image,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                recipe.name,
                style: const TextStyle(
                    fontSize: 35,
                    fontFamily: 'OoohBaby',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text(
                'Ingredients: ',
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'DancingScript',
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: recipe
                          .getIngredients()
                          .map((ingredient) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '- $ingredient',
                                    style: const TextStyle(
                                      fontFamily: 'LoraItalic',
                                      fontSize: 25,
                                    ),
                                  ),
                                  const SizedBox(height: 25),
                                ],
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Instructions: ',
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'DancingScript',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ...recipe.getInstructions().map((instructions) => Column(
                    children: [
                      Text(
                        '- $instructions',
                        style: const TextStyle(
                          fontFamily: 'LoraItalic',
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
