import { Component, OnInit } from '@angular/core';
import { DrugService, AuthenticationService, LineService } from '../../../services';
import { Drugs, CurrentUser, SalesLine } from '../../../Models';
import * as hf from '../../helpers/helper.functions'

@Component({
  selector: 'app-drug',
  templateUrl: './drug.component.html'
})
export class DrugComponent implements OnInit {

  currentUser: CurrentUser = this.auth.getUser();
  collection: Drugs[] = [];
  searchDrug: Drugs = new Drugs();
  model: Drugs;
  showTable: boolean;
  Formstate: string;
  headerText: string;
  errorMessage: string;
  orderbyString =  '';
  orderbyClass = 'glyphicon glyphicon-sort';
  lines: SalesLine[] = []

  constructor(public serv: DrugService, private auth: AuthenticationService, private srvlne: LineService) { }

  ngOnInit() {
    this.serv.getDrug().subscribe(cols => {
      this.collection = cols;
      this.srvlne.getLine().subscribe(ln => {
        this.lines = ln;
        this.TableBack();
      }, err => hf.handleError(err))
    }, err => hf.handleError(err));
  }

  CreateNew() {
    this.model = new Drugs();
    this.showTable = false;
    this.Formstate = 'Create';
    this.headerText = 'Create New Product';
  }

  EditThis(id: number) {
    this.loadDetails(id, 'Edit');
  }
  ShowDetails(id: number) {
    this.loadDetails(id, 'Details');
  }
  Delete(id: number) {
    this.loadDetails(id, 'Delete');
  }
  loadDetails(id, state) {
    this.serv.getDrug(id).subscribe(ret => {
      this.model = ret[0];
      this.showTable = false;
      this.Formstate = state;
      this.headerText = state == 'Details' ? 'Product ' + state : state + ' Product';
    }, err => hf.handleError(err));
  }

  TableBack() {
    this.showTable = true;
    this.Formstate = null;
    this.headerText = 'Products';
    this.errorMessage = null;
  }
  HandleForm(event) {
    event.preventDefault();
    const newObject: Drugs = this.model;
    switch (this.Formstate) {
      case 'Create':
        this.serv.InsertDrug(newObject).subscribe(ret => {
          if (ret.error) {
            hf.handleError(ret.error)
          } else if (ret.affected > 0) {
            this.ngOnInit();
          }
        }, err => hf.handleError(err));
        break;
      case 'Edit':
        this.serv.UpdateDrug(newObject.DrugID, newObject).subscribe(ret => {
          if (ret.error) {
            hf.handleError(ret.error)
          } else if (ret.affected > 0) {
            this.ngOnInit();
          }
        }, err => hf.handleError(err));
        break;
      case 'Delete':
        this.serv.DeleteDrug(newObject.DrugID).subscribe(ret => {
          if (ret.error) {
            hf.handleError(ret.error)
          } else if (ret.affected > 0) {
            this.ngOnInit();
          }
        }, err => hf.handleError(err));
        break;
      default:
        break;
    }
  }
  SortTable(column: string) {
    if (this.orderbyString.indexOf(column) === -1) {
      this.orderbyClass = 'glyphicon glyphicon-sort-by-attributes';
      this.orderbyString =  '+' + column;
    } else if (this.orderbyString.indexOf('-' + column) === -1) {
      this.orderbyClass = 'glyphicon glyphicon-sort-by-attributes-alt';
      this.orderbyString =  '-' + column;
    } else {
      this.orderbyClass = 'glyphicon glyphicon-sort';
      this.orderbyString =  '';
    }
  }
}
