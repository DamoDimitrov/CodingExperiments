import {Component, Input, OnInit} from '@angular/core';
import {IMovie} from '../../interfaces/movie';

@Component({
  selector: 'app-movie-item',
  templateUrl: './movie-item.component.html',
  styleUrls: ['./movie-item.component.css']
})
export class MovieItemComponent implements OnInit {

  @Input()movie: IMovie;

  constructor() { }

  ngOnInit(): void {
  }

}
