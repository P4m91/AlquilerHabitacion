import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AlquileresHomeComponent } from "./alquileres-home/alquileres-home.component";
import { AlquileresDetailComponent } from "./alquileres-detail/alquileres-detail.component";
import { AlquileresNewComponent } from "./alquileres-new/alquileres-new.component";
const routes: Routes = [{
  path : '',
  component: AlquileresHomeComponent
},

{
  path: "new",
  component: AlquileresNewComponent
},
{
  path: ":id_alquiler",
  component: AlquileresDetailComponent
}
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AlquileresRoutingModule { }
