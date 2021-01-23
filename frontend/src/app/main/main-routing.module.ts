import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuardService } from 'ontimize-web-ngx';

import { MainComponent } from './main.component';
import { HomeModule } from './home/home.module';
import { AlquileresModule } from './alquileres/alquileres.module';




export function loadHomeModule() {
  return HomeModule;
}
export function loadAlquileresModule() {
  return AlquileresModule;
}

export function loadEmployeesModule(){

}

export const routes: Routes = [
  {
    path: '',
    component: MainComponent,
    canActivate: [AuthGuardService],
    children: [
      { path: '', redirectTo: 'home', pathMatch: 'full' },
      { path: 'home', loadChildren: loadHomeModule
    },
    {
      path: 'alquileres',
      loadChildren: loadAlquileresModule
    },


    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class MainRoutingModule { }
