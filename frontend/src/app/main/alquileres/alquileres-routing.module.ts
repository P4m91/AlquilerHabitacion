import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AlquileresHomeComponent } from "./alquileres-home/alquileres-home.component";

const routes: Routes = [{
  path : '',
  component: AlquileresHomeComponent
}];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AlquileresRoutingModule { }
