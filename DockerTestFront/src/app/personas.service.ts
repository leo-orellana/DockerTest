import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment'; 

@Injectable({
  providedIn: 'root'
})
export class PersonasService {

  private url = environment.apiUrl;

  constructor(
    private http: HttpClient,
  ) { }

  getPersonas() {
    return this.http.get(this.url + 'Personas');
  }
}
