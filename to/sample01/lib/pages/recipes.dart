import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample01/data/recipes.dart';
import 'package:sample01/pages/inspect/inspect.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Developer Recipe Book')),
      body: SingleChildScrollView(
        child: Column(
          children: recipes
              .map((e) => Card(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/${e.picture}',
                          width: 300,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                e.name,
                                textAlign: TextAlign.center,
                              ),
                              ElevatedButton(
                                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => InspectWidget(e.id),
                                )),
                                child: Text('OPEN RECIPE'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
