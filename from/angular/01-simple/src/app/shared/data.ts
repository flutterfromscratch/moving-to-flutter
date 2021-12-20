export const recipes = [{
  id: 0,
  name: 'Cup of noodles',
  picture: 'cupofsoup.jpg',
  steps: ['Open cup', 'Add boiling water', 'Wait a few minutes', 'Enjoy!']
}, {
  id: 1,
  name: 'Buttered noodles',
  picture: 'butterednoodles.jpg',
  steps: ['Boil noodles', 'Add butter', 'Wait for butter to melt...', 'Enjoy!']
}, {
  id: 2,
  name: 'Potato chips',
  picture: 'chips.jpg',
  steps: ['Open potato chip packet', 'Pour into bowl', 'Eat!']
}] as Array<Recipe>;

export interface Recipe {
  name: string;
  picture: string;
  steps: string[];
  id: number;
}
