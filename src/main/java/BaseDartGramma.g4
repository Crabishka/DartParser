grammar BaseDartGramma;

value: [0-9]* | '"' [a-zA-Z0-9]* '"';

identifier :  letter (letter | digit | '_' )* '?'? ;

letter : [a-zA-Z];

digit: [0-9];


