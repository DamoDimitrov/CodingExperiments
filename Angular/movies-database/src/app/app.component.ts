import { Component } from '@angular/core';
import {IMovie} from './interfaces/movie';
import {MOVIES} from '../data/movies-response';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'MM Database';

  movies: IMovie[];

  constructor() {
    this.movies = MOVIES.results;
  }
}
