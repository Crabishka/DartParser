grammar DartFuncGramma;

import BaseDartGramma,DartStatementGramma;

function : type  identifier  '(' parameters?  ')'  '{' functionBody '}' ;

functionBody: statement* ;

// type : 'void' | 'int' | 'double' | 'String' | 'var' | identifier;
// иначе оно начинает искать int/double/etc в identifier, и я не знаю, как это пофиксить
type :  identifier;

parameters: parameter ((',' parameter)*)?;

parameter : type identifier | '[' type identifier '=' value ']';

//functionalCall: identifier bracket parameters? backBracket ';';
//bracket : '(';
//backBracket : ')';
// не, это не я мудак, оно реально работает через раз, если использовать обычные символы скобок

functionalCall: identifier '(' values? ')' ';';


values : (identifier | value) ((',' (identifier | value))*)?;

end : ';';


