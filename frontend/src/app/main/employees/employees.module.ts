import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OntimizeWebModule } from "ontimize-web-ngx" ;
import { EmployeesRoutingModule } from './employees-routing.module';


@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    OntimizeWebModule,
    EmployeesRoutingModule
  ]
})
export class EmployeesModule { }
