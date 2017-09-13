import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';
import { NgxPaginationModule } from 'ngx-pagination';
import { ToastrModule, ToastContainerModule  } from 'ngx-toastr';
import { AlertModule, DatepickerModule } from 'ngx-bootstrap';
import { ChartsModule } from 'ng2-charts';
import { FileUploadModule } from 'ng2-file-upload/ng2-file-upload';


import { AppComponent } from './app.component';
import {
  HomeComponent, DashboardComponent, UserComponent, RegionComponent,
  SidebarComponent, TopNavComponent, DestinationComponent, VisitModule,
  UserScheduleComponent, UserWorkRateComponent, UserPlanComponent,
  PlanComponent, HelperModule, LineUsersComponent, ChngPassComponent,
  ScoreCardComponent, VacationComponent, ContactUsComponent, WeekPlanComponent, TopUsersComponent
} from './components';
import { LoginComponent, LogOutComponent } from './components/login/login.component';
import {
  AuthenticationService, AuthGuard, RegionService, UserService, UserRegionService,
  DestinationService, DashboardService, PlanService, BreadcrumbService, MessagesService,
  IMSService, ReportsService, VacationService, ContactUsService, WeekPlanService
} from './services';
import { CustomPipesModule } from "./pipes/pipe.module";
import { Approuting } from './app.routing';

import {
  BreadcrumbComponent, AppHeaderComponent, AppFooterComponent, MenuAsideComponent,
  ControlSidebarComponent, MessagesBoxComponent, NotificationBoxComponent,
  TasksBoxComponent, UserBoxComponent
} from './components/widgets';

let widgets = [
  BreadcrumbComponent, AppHeaderComponent, AppFooterComponent, MenuAsideComponent,
  ControlSidebarComponent, MessagesBoxComponent, NotificationBoxComponent,
  TasksBoxComponent, UserBoxComponent
];

@NgModule({
  imports: [
    BrowserModule, FormsModule,
    ReactiveFormsModule, HttpModule,
    ToastrModule.forRoot({
      timeOut: 10000,
      newestOnTop: true,
      closeButton: true,
      tapToDismiss: false
    }), ToastContainerModule.forRoot(),
    RouterModule, Approuting, CustomPipesModule, NgxPaginationModule,
    AlertModule.forRoot(), DatepickerModule.forRoot(),
    VisitModule, HelperModule, ChartsModule,
    FileUploadModule/**/
  ],
  declarations: [
    AppComponent, ...widgets, LoginComponent, LogOutComponent, HomeComponent,
    UserComponent, RegionComponent, DashboardComponent,
    SidebarComponent, TopNavComponent, DestinationComponent,
    UserScheduleComponent, UserWorkRateComponent, UserPlanComponent, ScoreCardComponent,
    PlanComponent, LineUsersComponent, ChngPassComponent,
    VacationComponent, ContactUsComponent, WeekPlanComponent, TopUsersComponent
  ],
  providers: [
    AuthGuard, AuthenticationService,
    UserService, RegionService, UserRegionService,
    DestinationService, DashboardService, PlanService,
    BreadcrumbService, MessagesService, IMSService,
    ReportsService, VacationService, ContactUsService,
    WeekPlanService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }

