import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { OntimizeWebModule } from "ontimize-web-ngx";
import { AlquileresRoutingModule } from "./alquileres-routing.module";
import { AlquileresHomeComponent } from "./alquileres-home/alquileres-home.component";



@NgModule({
  imports: [
    CommonModule,
    OntimizeWebModule,
    AlquileresRoutingModule
  ],
  declarations: [
     AlquileresHomeComponent
    ]
})
export class AlquileresModule {}
