import { Component, OnInit } from '@angular/core';
import {
  SurveyQuestionService,
  AuthenticationService
} from '../../../services';
import { SurveyQuestion, SurveyAnswer, CurrentUser } from '../../../Models';
import * as hf from '../../helpers/helper.functions';

@Component({
  selector: 'app-bsc-srvy-q',
  templateUrl: './surveyQ.component.html'
})
export class SurveyQuestionsComponent implements OnInit {
  currentUser: CurrentUser = this.auth.getUser();
  collection: SurveyQuestion[] = [];
  Answers: SurveyAnswer[] = [];
  answerModel: SurveyAnswer = new SurveyAnswer();
  srcObj: SurveyQuestion = new SurveyQuestion();
  model: SurveyQuestion;
  showTable: boolean;
  Formstate: string;
  headerText: string;
  errorMessage: string;
  orderbyString = '';
  orderbyClass = 'glyphicon glyphicon-sort';
  ansChanged: number;
  oldAnswerEdit = '';

  constructor(
    private srvQ: SurveyQuestionService,
    private auth: AuthenticationService
  ) {}

  ngOnInit() {
    this.srvQ.getQuestion().subscribe(
      cols => {
        if (cols.error) {
          hf.handleError(cols.error)
        } else {
          this.collection = cols;
        }
      }, err => hf.handleError(err)
    );
    this.TableBack();
  }
  CreateNew() {
    this.model = new SurveyQuestion();
    this.Answers = [];
    this.answerModel = new SurveyAnswer();
    this.showTable = false;
    this.Formstate = 'Create';
    this.headerText = 'Create New Survey Question';
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
    this.srvQ.getQuestion(id).subscribe(ret => {
      this.model = ret[0];
      this.srvQ.getAnswer(id).subscribe(ans => {
        this.Answers = ans;
        this.showTable = false;
        this.Formstate = state;
        this.headerText =
          state === 'Details'
            ? 'Survey Question ' + state
            : state + ' Survey Question';
      }, err => hf.handleError(err));
    }, err => hf.handleError(err));
  }
  TableBack() {
    this.showTable = true;
    this.Formstate = null;
    this.headerText = 'Survey Questions';
    this.errorMessage = null;
  }
  HandleForm(event) {
    event.preventDefault();
    const newQst: SurveyQuestion = this.model;
    switch (this.Formstate) {
      case 'Create':
        this.srvQ.InsertQuestion(newQst, this.Answers).subscribe(ret => {
          if (ret.error) {
            hf.handleError(ret.error)
          } else if (ret.affected > 0) {
            this.ngOnInit();
          }
        }, err => hf.handleError(err));
        break;
      case 'Edit':
        this.srvQ
          .UpdateQuestion(newQst.QID, newQst, this.Answers)
          .subscribe(ret => {
            if (ret.error) {
              hf.handleError(ret.error)
            } else if (ret.affected > 0) {
              this.ngOnInit();
            }
          }, err => hf.handleError(err));
        break;
      case 'Delete':
        this.srvQ.DeleteQuestion(newQst.QID).subscribe(ret => {
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
  ansChangeEvent(value) {
    this.ansChanged = value;
  }
  DeleteAnswer(index) {
    this.Answers.splice(index, 1);
    this.ansChanged = this.Answers.length;
  }
  EditAnswer(index) {
    this.answerModel = new SurveyAnswer();
    this.answerModel.AnswerID = this.Answers[index].AnswerID;
    this.answerModel.AnswerText = this.Answers[index].AnswerText;
    this.oldAnswerEdit = this.Answers[index].AnswerText;
    this.answerModel.QID = this.Answers[index].QID;
  }
}
