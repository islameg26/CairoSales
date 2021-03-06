import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { BreadcrumbService } from '../../../services';

@Component({
  selector: 'app-breadcrumb',
  templateUrl: './breadcrumb.component.html'
})
export class BreadcrumbComponent {
  display = false;
  private header = '';
  private description = '';
  private levels: Array<any> = [];

  constructor(private breadServ: BreadcrumbService) {
    // getting the data from the services
    this.breadServ.current.subscribe((data) => {
      this.display = data.display;
      this.header = data.header;
      this.description = data.description;
      this.levels = data.levels;
    });
  }

}
