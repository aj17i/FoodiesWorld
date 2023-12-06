import 'package:flutter/material.dart';
import 'Recipe.dart';

class ItalianPage extends StatelessWidget {
  ItalianPage({super.key});

  List<Recipe> ItalianRecipe = [
    Recipe(
        'Pizza Neapolitan',
        [
          '1 ball Best Homemade Pizza Dough',
          '⅓ cup Easy Pizza Sauce',
          '3 ounces fresh mozzarella cheese (or about ¾ cup shredded mozzarella)',
          'Kosher salt',
          '2 basil leaves',
          'Semolina flour or cornmeal, for dusting the pizza peel',
        ],
        [
          'Prepare the dough using the Best Pizza Dough recipe (follow this video instruction for more). Follow the preparation instructions in the dough recipe if prepared in advance.',
          'Place a pizza stone in the oven and preheat to 500°F. OR preheat your pizza oven (here’s the pizza oven we have!).',
          'Make the Homemade Pizza Sauce.',
          'Slice the mozzarella into ¼ inch thick pieces. If it’s incredibly watery fresh mozzarella (all brands vary), you may want to let it sit on a paper towel to remove moisture for about 15 minutes then dab the mozzarella with the paper towel to remove any additional moisture.',
          'When the oven is ready, stretch the dough into a circle; see How to Stretch Pizza Dough for instructions. Sprinkle a pizza peel with semolina flour or cornmeal, then carefully place the dough on top. Spread the pizza sauce across the dough. Top with mozzarella cheese.  Taste a bite of the mozzarella cheese; if it does not taste salty, add a few pinches of kosher salt to the pizza.',
          'If you’re baking in a pizza oven, add the basil leaves. For baking in a standard oven, add the basil leaves after you bake (the leaves turn black in a standard oven).',
          'Transfer the pizza to the pizza stone on the pizza peel, then bake until the cheese is melted, about 7 minutes in the oven (or 1 minute in the pizza oven). Slice into pieces and serve immediately.',
        ],
        'https://murmursofricotta.com/wp-content/uploads/2022/04/Neapolitan-Pizza_-12-819x1024.webp'),
    Recipe(
        'Ravioli',
        [
          '1 tbsp olive oil',
          '1 onion - finely diced',
          '2 cloves garlic - peeled and minced',
          '500 g (1.1 lbs) fresh ravioli - (use your favourite flavour)',
          '1 red bell pepper - sliced',
          '½ tsp Italian herbs',
          '½ tsp chilli flakes (red pepper flakes)',
          '½ tsp black pepper',
          'pinch salt',
          '1 tbsp tomato puree - paste for US',
          '90 ml (⅓ cup) white wine',
          '100 g (3.5 oz) roasted cherry tomato halves - you can buy these from the deli counter',
          '120 ml (½ cup) chicken stock',
          '90 ml (⅓ cup) double (heavy) cream',
          '90 g (3 packed cups) baby spinach',
          '50 g (½ cup) parmesan - grated',
          '1 tbsp fresh parsley - finely chopped',
        ],
        [
          'Add the olive oil to a large frying pan (or skillet) and heat over a medium heat, then add in the finely diced onion and cook for 4-5 minutes until the onion starts to soften.',
          'Add in the minced garlic and cook for another 30 seconds stirring continuously.',
          'Now add in the ravioli and the sliced red bell pepper and cook for another minute, stirring a few times.',
          'Add in the Italian herbs, chilli flakes, black pepper, and salt, give it a stir then add in the tomato puree and wine, stir again, and cook for another minute to reduce the wine down slightly.',
          'Add in the roasted tomatoes, chicken stock, and cream. Stir everything together and bring up to a simmer. Allow to simmer for 5-6 minutes, until the centre of the ravioli is piping hot (you can open one up to check this).',
          'Add in the spinach and parmesan and cook for a minute to allow the cheese to melt and the spinach to wilt.',
          'Sprinkle with fresh parsley and serve.',
        ],
        'https://www.kitchensanctuary.com/wp-content/uploads/2021/06/Creamy-Tomato-Ravioli-Sauce-Tall-FS-15.webp'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Italian Recipes',
          style: TextStyle(fontSize: 35, fontFamily: 'OoohBaby'),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 21, 37),
      ),
      body: ListView.builder(
        itemCount: ItalianRecipe.length,
        itemBuilder: (context, index) {
          Recipe recipe = ItalianRecipe[index];
          return ListTile(
            title: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    recipe.image,
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Text(recipe.name),
              ],
            ),
            subtitle: const Center(child: Text('Tap to view recipe details')),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeWidget(recipe: recipe),
                ),
              );
            },
            contentPadding: const EdgeInsets.all(16.0),
          );
        },
      ),
    );
  }
}
