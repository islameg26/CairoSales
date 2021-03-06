import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';
import { NgxPaginationModule } from 'ngx-pagination';
import { ToastrModule, ToastContainerModule } from 'ngx-toastr';
import { ChartsModule } from 'ng2-charts';
import { FileUploadModule } from 'ng2-file-upload/ng2-file-upload';
import { CustomMaterialModule } from './components/material.module';
import { NguiMapModule } from '@ngui/map';
import { AngularFireModule } from 'angularfire2';
import { AngularFireDatabaseModule } from 'angularfire2/database';
import { AngularFireAuthModule } from 'angularfire2/auth';
import { ModalModule } from 'ngx-bootstrap';
import { NgSpinKitModule } from 'ng-spin-kit'

import { AppComponent } from './app.component';
import {
  HomeComponent,
  DashboardComponent,
  UserComponent,
  RegionComponent,
  SidebarComponent,
  TopNavComponent,
  DestinationComponent,
  VisitModule,
  UserScheduleComponent,
  UserWorkRateComponent,
  UserPlanComponent,
  PlanComponent,
  HelperModule,
  LineUsersComponent,
  ChngPassComponent,
  ScoreCardComponent,
  VacationComponent,
  ContactUsComponent,
  WeekPlanComponent,
  TopUsersComponent,
  DestinationApproveComponent,
  DestinationAssignComponent,
  DestinationRemoveComponent,
  MessageComponent
} from './components';
import {
  LoginComponent,
  LogOutComponent
} from './components/login/login.component';
import {
  AuthenticationService,
  AuthGuard,
  RegionService,
  UserService,
  UserRegionService,
  DestinationService,
  DashboardService,
  PlanService,
  BreadcrumbService,
  MessagesService,
  MessageService,
  IMSService,
  ReportsService,
  VacationService,
  ContactUsService,
  WeekPlanService,
  MedSpecService,
  DrugService,
  ImportanceService,
  LineService
} from './services';
import { CustomPipesModule } from './pipes/pipe.module';
import { Approuting } from './app.routing';

import {
  BreadcrumbComponent,
  AppHeaderComponent,
  AppFooterComponent,
  MenuAsideComponent,
  ControlSidebarComponent,
  MessagesBoxComponent,
  NotificationBoxComponent,
  TasksBoxComponent,
  UserBoxComponent
} from './components/widgets';

let widgets = [
  BreadcrumbComponent,
  AppHeaderComponent,
  AppFooterComponent,
  MenuAsideComponent,
  ControlSidebarComponent,
  MessagesBoxComponent,
  NotificationBoxComponent,
  TasksBoxComponent,
  UserBoxComponent
];
let services = [
  AuthenticationService,
  AuthGuard,
  RegionService,
  UserService,
  UserRegionService,
  DestinationService,
  DashboardService,
  PlanService,
  BreadcrumbService,
  MessagesService,
  MessageService,
  IMSService,
  ReportsService,
  VacationService,
  ContactUsService,
  WeekPlanService,
  MedSpecService,
  DrugService,
  ImportanceService,
  LineService
];
let allcomponents = [
  HomeComponent,
  DashboardComponent,
  UserComponent,
  RegionComponent,
  SidebarComponent,
  TopNavComponent,
  DestinationComponent,
  UserScheduleComponent,
  UserWorkRateComponent,
  UserPlanComponent,
  PlanComponent,
  LineUsersComponent,
  ChngPassComponent,
  ScoreCardComponent,
  VacationComponent,
  ContactUsComponent,
  WeekPlanComponent,
  TopUsersComponent,
  DestinationApproveComponent,
  DestinationAssignComponent,
  DestinationRemoveComponent,
  MessageComponent
];
export const firebaseConfig = {
  apiKey: 'AIzaSyBKLexkyWvx0ipl3kGZ4gNRHAp9ddwfkUo',
  authDomain: 'cairosales-aa702.firebaseapp.com',
  databaseURL: 'https://cairosales-aa702.firebaseio.com',
  projectId: 'cairosales-aa702',
  storageBucket: 'cairosales-aa702.appspot.com',
  messagingSenderId: '908456895386'
};
const toastrConfig = {
  timeOut: 10000,
  newestOnTop: true,
  closeButton: true,
  tapToDismiss: false
};

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
    HttpModule,
    RouterModule,
    ToastrModule.forRoot(toastrConfig),
    ToastContainerModule.forRoot(),
    Approuting,
    CustomPipesModule,
    NgxPaginationModule,
    ModalModule.forRoot(),
    VisitModule,
    HelperModule,
    ChartsModule,
    FileUploadModule,
    NguiMapModule.forRoot({
      apiUrl:
        'https://maps.google.com/maps/api/js?key=AIzaSyCbMGRUwcqKjlYX4h4-P6t-xcDryRYLmCM' +
        '&libraries=visualization,places,drawing'
    }),
    AngularFireModule.initializeApp(firebaseConfig),
    AngularFireDatabaseModule,
    AngularFireAuthModule,
    NgSpinKitModule /**/
  ],
  declarations: [
    AppComponent,
    ...widgets,
    LoginComponent,
    LogOutComponent,
    ...allcomponents
  ],
  providers: [...services],
  bootstrap: [AppComponent]
})
export class AppModule {}
