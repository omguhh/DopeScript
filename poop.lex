%{
#include "tokens.h"
%}

DIGIT    [0-9]
IDENT    [a-zA-Z][A-Za-z0-9]*      
%%

";" 		{ return SEMI;}
{DIGIT}+ 	{ return INT; }

[INDENT] 	{return ID;} 
<<EOF>> 	{return EOF;}
[ \t\n]+     /* eat up whitespace */
%%

int yywrap() { return EOF; }
