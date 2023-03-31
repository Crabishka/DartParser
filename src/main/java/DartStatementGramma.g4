grammar DartStatementGramma;

import BaseDartGramma, DartFuncGramma;

statement: functionalCall | assignment | loop ;

loop : 'for' '(' assignment ';' condition ';' expression ')' loopBody |
       'while' '(' condition ')' loopBody;

loopBody: '{' statement* '}' ;


condition: expression comporator expression | identifier comporator expression | expression comporator identifier;

assignment: identifier '=' expression;

expression : term (('+'|'-') term)* | increment;

increment: identifier '++';
term : factor (('*'|'/') factor)* ;
factor : number | '(' expression ')' ;


