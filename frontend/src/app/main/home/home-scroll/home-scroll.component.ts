<<<<<<< HEAD
import { Inject, Component, OnInit } from '@angular/core';
import { MAT_DIALOG_DATA } from '@angular/material';
import { DomSanitizer } from '@angular/platform-browser';

/* definir variable de entrada de data */
=======
import { Component, OnInit } from '@angular/core';


>>>>>>> 9996c29f9cb90f4c85a6d5ed8dcfdae98a2090f3

@Component({
  selector: 'app-home-scroll',
  templateUrl: './home-scroll.component.html',
  styleUrls: ['./home-scroll.component.css']
})
export class HomeScrollComponent implements OnInit {

<<<<<<< HEAD
  constructor(
    @Inject(MAT_DIALOG_DATA) public data: any,
    protected sanitizer: DomSanitizer
  ) { }

  public getImageSrc(base64: string): any {
    return base64 ? this.sanitizer.bypassSecurityTrustResourceUrl('data:image/*;base64,' + base64) : './assets/images/no-image-transparent.png';
  }
=======
  constructor()
 { }
>>>>>>> 9996c29f9cb90f4c85a6d5ed8dcfdae98a2090f3

  ngOnInit() {
  }

}



