import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { User } from '../../Models';

import { AuthenticationService } from '../../services/auth.service';
import * as hf from '../helpers/helper.functions'

@Component({
    selector: 'app-login',
    templateUrl: './login.component.html',
    styles: [`
        h1 {
            margin-top: 20px;
            margin-bottom: 10px;
            text-align: center;
        }
        login-page {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            overflow: auto;
            text-align: center;
        }
    `]
})

export class LoginComponent implements OnInit {
    model: any = {};
    loading = false;
    error = '';

    constructor(
        private router: Router,
        private authenticationService: AuthenticationService) { }

    ngOnInit() {

    }

    login() {
        this.loading = true;
        const newuser = {
            LoginName: this.model.username,
            UserPass: this.model.password
        };
        this.authenticationService.login(newuser)
            .subscribe(result => {
                if (result.login === true) {
                    this.router.navigate(['home/dashboard']);
                } else {
                    this.error = result.error;
                    hf.handleError(this.error)
                    this.loading = false;
                }
            });
    }
}

@Component({
    selector: 'app-logout',
    template: ''
})
export class LogOutComponent implements OnInit {
    constructor(private router: Router,
        private authenticationService: AuthenticationService) { }

    ngOnInit() {
        // reset login status
        this.authenticationService.logout();
        this.router.navigate(['login']);
    }
}
