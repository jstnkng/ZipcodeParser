%{
	#include <stdlib.h>
	#include <zipcode.tab.h>
%}

%option noyywrap

%%
[A-Za-z0-9] { yylval.str = strdup(yytext); return TEXT;}
[0-9] 	{yylval.i = atoi(yytext); return LONG;}
-?[0-9]+.[0.9] {yylval.d = atof(yytext); return DOUBLE;}
,		{return SEPARATOR;} 
[ \t\n]		;

%%


