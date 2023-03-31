grammar DartFuncGramma;

import BaseDartGramma;

function : type identifier  '(' parameters?  ')'  ;

type : 'void' | 'int' | 'double' | 'String' | 'var' | identifier;

parameters: parameter ((',' parameter)*)?;

parameter : type identifier | '[' type identifier '=' value ']';







