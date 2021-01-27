import { Inject, Component, OnInit } from '@angular/core';
import { MAT_DIALOG_DATA } from '@angular/material';
import { DomSanitizer } from '@angular/platform-browser';

/* definir variable de entrada de data */

@Component({
  selector: 'app-home-scroll',
  templateUrl: './home-scroll.component.html',
  styleUrls: ['./home-scroll.component.css']
})
export class HomeScrollComponent implements OnInit {

  constructor(
    @Inject(MAT_DIALOG_DATA) public data: any,
    protected sanitizer: DomSanitizer
  ) { }

  public getImageSrc(base64: string): any {
    return base64 ? this.sanitizer.bypassSecurityTrustResourceUrl('data:image/*;base64,' + base64) : './assets/images/no-image-transparent.png';
  }

  ngOnInit() {
  }

}



