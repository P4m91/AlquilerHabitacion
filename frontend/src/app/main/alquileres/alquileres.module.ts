import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { OntimizeWebModule } from "ontimize-web-ngx";
import { AlquileresRoutingModule } from "./alquileres-routing.module";
import { AlquileresHomeComponent } from "./alquileres-home/alquileres-home.component";
import { AlquileresDetailComponent } from "./alquileres-detail/alquileres-detail.component";
import { AlquileresNewComponent } from "./alquileres-new/alquileres-new.component";





@NgModule({
  imports: [
    CommonModule,
    OntimizeWebModule,
    AlquileresRoutingModule
  ],
  declarations: [
     AlquileresHomeComponent,
     AlquileresDetailComponent,
     AlquileresNewComponent
    ]
})
export class AlquileresModule {}
