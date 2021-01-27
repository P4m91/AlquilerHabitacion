import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { OntimizeWebModule } from "ontimize-web-ngx";
import { About3RoutingModule } from "./about3-routing.module";
import { About3HomeComponent } from "./about3-home/about3-home.component";

@NgModule({
  imports: [
    CommonModule,
    OntimizeWebModule,
    About3RoutingModule
  ],
  declarations: [
    About3HomeComponent,
  ]
})
export class About3Module {
}
