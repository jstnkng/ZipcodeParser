%{
	#include <stdio.h>
	void yyerror(const char* msg);
	int yylex();
	int num_zipcodes = 0;
%}

%error-verbose
%start zipcode_list

%union { double d; long l; char* str; }

%token SEPARATOR
%token TEXT
%token DOUBLE
%token LONG

%type<str> TEXT
%type<d> DOUBLE
%type<l> LONG

%%

zipcode_list: zipcode
	|	zipcode zipcode_list
;

zipcode: TEXT SEPARATOR TEXT SEPARATOR TEXT SEPARATOR TEXT SEPARATOR TEXT SEPARATOR DOUBLE SEPARATOR DOUBLE SEPARATOR TEXT SEPARATOR TEXT SEPARATOR LONG SEPARATOR LONG SEPARATOR LONG SEPARATOR
	
%%

