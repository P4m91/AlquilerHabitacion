import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { About3HomeComponent } from "./about3-home/about3-home.component";

const routes: Routes = [
  { path : "", component: About3HomeComponent }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class About3RoutingModule {
}
