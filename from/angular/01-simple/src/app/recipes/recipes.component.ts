import {Component, OnInit} from '@angular/core';
import {recipes} from "../shared/data";

@Component({
  selector: 'app-recipes',
  templateUrl: './recipes.component.html',
  styleUrls: ['./recipes.component.css']
})
export class RecipesComponent implements OnInit {
  // recipes = recipes
  availableRecipies = recipes;



  constructor() {
  }

  ngOnInit(): void {
  }

}

