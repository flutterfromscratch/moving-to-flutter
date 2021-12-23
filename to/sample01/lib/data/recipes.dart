class Recipe {
  final String name;
  final String picture;
  final List<String> steps;
  final int id;

  Recipe(this.name, this.picture, this.steps, this.id);
}

final recipes = <Recipe>[
  Recipe(
      'Cup of noodles',
      'cupofsoup.jpg',
      [
        'Open cup',
        'Add boiling water',
        'Wait a few minutes',
        'Enjoy!',
      ],
      0),
  Recipe(
      'Buttered noodles',
      'butterednoodles.jpg',
      [
        'Boil noodles',
        'Add butter',
        'Wait for butter to melt...',
        'Enjoy!',
      ],
      1),
  Recipe(
      'Potato Chips',
      'chips.jpg',
      [
        'Open cup',
        'Add boiling water',
        'Wait a few minutes',
        'Enjoy!',
      ],
      2),
];
