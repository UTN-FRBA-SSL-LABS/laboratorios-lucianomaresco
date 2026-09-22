%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int yylex(void);
void yyerror(const char *msg) { fprintf(stderr, "Error: %s\n", msg); }
%}

%union {
    int int_val;
    char str_val[64];
}

%token <int_val> NUM
%token <str_val> IDENT

%type <str_val> item

%%

input:
    /* vacío */
  | input item
  ;

item:
    NUM '\n'   { printf("Numero: %d\n", $1); }
  | IDENT '\n' { printf("Identificador: %s\n", $1); }
  ;

%%

int main(void) {
    return yyparse();
}