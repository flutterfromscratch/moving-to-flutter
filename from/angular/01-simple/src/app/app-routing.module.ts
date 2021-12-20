import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {RecipesComponent} from "./recipes/recipes.component";
import {InspectComponent} from "./recipes/inspect/inspect.component";

const routes: Routes = [
  { path: '', component: RecipesComponent},
  {path: 'inspect/:id', component: InspectComponent, pathMatch: 'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
