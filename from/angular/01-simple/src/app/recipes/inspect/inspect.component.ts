import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router} from "@angular/router";
import {Observable} from "rxjs";
import {Recipe, recipes} from "../../shared/data";

@Component({
  selector: 'app-inspect',
  templateUrl: './inspect.component.html',
  styleUrls: ['./inspect.component.css']
})
export class InspectComponent implements OnInit {

  recipe: Recipe;

  constructor(private route: ActivatedRoute, private router: Router,) {
    const routeParams = this.route.snapshot.paramMap;
    this.recipe = recipes[Number(routeParams.get('id'))];

  }

  ngOnInit(): void {
  }

}

