import { Component, OnInit } from '@angular/core';
import { FilterExpressionUtils, Expression } from 'ontimize-web-ngx';

@Component({
 selector: 'app-alquileres-home',
 templateUrl: './alquileres-home.component.html',
 styleUrls: ['./alquileres-home.component.css']
})
export class AlquileresHomeComponent implements OnInit {

 constructor() { }

 ngOnInit() {
 }

}





export class alquileresHomeComponent {​​​​​​​​

createFilter(values: Array<{​​​​​​​​ attr, value }​​​​​​​​>): Expression {​​​​​​​​
// Prepare simple expressions from the filter components values
let filters: Array<Expression> = [];
values.forEach(fil=> {​​​​​​​​
if (fil.value) {​​​​​​​​
  if (fil.attr === 'ciudad' || fil.attr === 'localidad') {​​​​​​​​
  filters.push(FilterExpressionUtils.buildExpressionLike(fil.attr, fil.value));
}​​​​​​​​

if (fil.attr === 'precio') {​​​​​​​​
filters.push(FilterExpressionUtils.buildExpressionEquals(fil.attr, fil.value));
}​​​​​​​​

if (fil.attr === 'precicurso_completo') {​​​​​​​​
filters.push(FilterExpressionUtils.buildExpressionEquals(fil.attr, fil.value));
}​​​​​​​​
​​​​}
 }​​​​​​​​);

// Build complex expression
if (filters.length > 0) {​​​​​​​​
return filters.reduce((exp1, exp2) =>FilterExpressionUtils.buildComplexExpression(exp1, exp2, FilterExpressionUtils.OP_AND));
 }​​​​​​​​ else {​​​​​​​​
return null;
 }​​​​​​​​
 }​​​​​​​​

 }​​​​​​​​


