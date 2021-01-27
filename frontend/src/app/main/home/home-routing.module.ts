import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home.component';

import { HomeScrollComponent } from './home-scroll/home-scroll.component';

const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: ":id_alquiler",
    component: HomeScrollComponent
    }

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class HomeRoutingModule { }
