import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { DomSanitizer } from '@angular/platform-browser';
import { MatDialog } from '@angular/material';
import { HomeScrollComponent } from './home-scroll/home-scroll.component';

@Component({
  selector: 'home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  constructor(
    protected dialog: MatDialog,
    private router: Router,
    private actRoute: ActivatedRoute,
    protected sanitizer: DomSanitizer,

  ) {
  }

  ngOnInit() {
  }

  navigate() {
    this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
  }

  public getImageSrc(base64: string): any {
    return base64 ? this.sanitizer.bypassSecurityTrustResourceUrl('data:image/*;base64,' + base64) : './assets/images/no-image-transparent.png';
  }

<<<<<<< HEAD
  public openDetail(data:any): void {
=======
  public openDetail(data): void {
>>>>>>> 9996c29f9cb90f4c85a6d5ed8dcfdae98a2090f3
    this.dialog.open(HomeScrollComponent, {
      height: '330px',
      width: '520px',
      data: data
    });
  }

}


