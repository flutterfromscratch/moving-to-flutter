import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample01/data/recipes.dart';

class InspectWidget extends StatelessWidget {
  final int id;
  late Recipe recipe;
  InspectWidget(this.id, {Key? key}) : super(key: key) {
    recipe = recipes.firstWhere((element) => element.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inspect recipe'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Column(
              children: [
                Text(recipe.name),
                Text('Tasty Recipe'),
                Image.asset('assets/${recipe.picture}'),
                Column(
                  children: recipe.steps.map((e) => Text(e)).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
