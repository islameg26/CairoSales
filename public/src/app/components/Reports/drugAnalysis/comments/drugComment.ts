import { Component, OnInit } from '@angular/core';
import { CurrentUser, rptdrugAnalysis, Drugs, IMSData } from '../../../../Models';
import { ReportsService, DrugService, IMSService, AuthenticationService } from '../../../../services';
import { Location } from '@angular/common';
import * as hf from '../../../helpers/helper.functions'

@Component({
    selector: 'app-rpt-drgcomment',
    templateUrl: './drugComment.html',
    styleUrls: ['../../../../Styles/PrintPortrait.css']
})
export class DrugCommentReportComponent implements OnInit {
    currentUser: CurrentUser = this.auth.getUser()
    drugList: Drugs[] = []
    collection: rptdrugAnalysis[] = []
    imsList: IMSData[] = []
    today = new Date()
    fromDate: string = hf.handleDate(this.today);
    toDate: string = hf.handleDate(this.today);
    drugID: number = null
    imsID: number = null
    orderbyString = '';
    orderbyClass = 'glyphicon glyphicon-sort';
    reportHeader = 'Product Analysis (Comments In Period)'

    constructor(private srv: ReportsService, private srvDrg: DrugService, private srvIms: IMSService,
        private auth: AuthenticationService, private location: Location) { }

    ngOnInit() {
        this.srvDrg.getDrug().subscribe(drg => {
            this.drugList = drg;
            this.srvIms.getIMS().subscribe(ims => this.imsList = ims)
        }, err => hf.handleError(err))
    }
    ViewReport() {
        this.srv.getdrugAnalysis(hf.handleDate(new Date(this.fromDate)), hf.handleDate(new Date(this.toDate)),
            this.drugID, 'Comments', this.imsID == null ? null : this.imsID.toString())
            .subscribe(ret => this.collection = ret, err => hf.handleError(err))
    }
    goBack() {
        this.location.back()
    }
    printReport() {
        window.print()
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
