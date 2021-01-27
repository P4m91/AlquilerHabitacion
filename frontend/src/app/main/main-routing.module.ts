import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { AuthGuardService } from "ontimize-web-ngx";

import { MainComponent } from "./main.component";
import { HomeModule } from "./home/home.module";
import { AlquileresModule } from "./alquileres/alquileres.module";
import { About3Module } from "./about3/about3.module";
/* import { EmployeeModule } from "./employee/employee.module"; */


export function loadHomeModule() {
  return HomeModule;
}
export function loadAlquileresModule() {
  return AlquileresModule;
}

export function loadEmployeesModule() {
  //TODO
}

export function loadAbout3Module() {
  return  About3Module;

}

/* export function loadEmployeeModule() {
  return EmployeeModule;
} */

export const routes: Routes = [
  {
    path: "",
    component: MainComponent,
    canActivate: [AuthGuardService],
    children: [
      { path: "", redirectTo: "home", pathMatch: "full" },
      { path: "home", loadChildren: loadHomeModule },
      { path: "alquileres", loadChildren: loadAlquileresModule },
      { path: "about3", loadChildren: loadAbout3Module }
    ],
  },
];


@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class MainRoutingModule {}
