%{
#include <stdio.h>
#include <stdlib.h>
//#include "gvlogo.tab.h"

void yyerror(const char* s);
%}

%%

(penup|PENUP)                { printf("GOT PENUP"); }
(pendown|PENDOWN)            { printf("GOT PENDOWN");}
(print|PRINT)                { printf("GOT PRINT");}
(save|SAVE)                  { printf("GOT SAVE"); }
(color|COLOR)                { printf("GOT COLOR"); }
(clear|CLEAR)                { printf("GOT CLEAR"); }
(turn|TURN)                  { printf("GOT TURN"); }
(move|MOVE)                  { printf("GOT MOVE"); }
(goto|GOTO)                  { printf("GOT GOTO"); }
(where|WHERE)                { printf("GOT WHERE"); }
[0-9]+\.[0-9]+               { printf("GOT NUMBERS"); }
\$[a-z]                      { printf("GOT VARIABLES"); }


[ \t\r\n]			;
.			{ yyerror("Lexing Syntax error.\n"); } 

%%

int main(int argc, char** argv){
    yylex();
    return 0;
}

void yyerror(const char* s){
    printf("%s\n", s);
}