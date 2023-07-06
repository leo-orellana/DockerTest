import { Component, OnInit } from '@angular/core';
import { PersonasService } from '../personas.service';

@Component({
  selector: 'app-personas',
  templateUrl: './personas.component.html',
  styleUrls: ['./personas.component.css']
})
export class PersonasComponent implements OnInit {

  personas: any;
  apiError: boolean = false;
  loading: boolean = false;
  isVisible: boolean = false;
  constructor(
    private personasService: PersonasService,
  ) { }

  getPersonas(): void {
    this.loading = true;
    this.isVisible = false;
    this.personasService.getPersonas().subscribe(
      (response) => { this.personas = response; this.isVisible = true; this.loading = false;},
      (error) => { this.loading = false; this.apiError = true; console.log(error); });
  }

  ngOnInit(): void {
    this.getPersonas();
    // setInterval(()=> { 
    //   this.getPersonas();
    // }, 5000);
  }

}
