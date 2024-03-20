%{
#include <stdio.h>
#include <stdlib.h>
#include "gvlogo.tab.h"

%}

%%

;                            { printf("GOT SEP"); return SEP; }
(penup|PENUP)                { printf("GOT PENUP"); return PENUP; }
(pendown|PENDOWN)            { printf("GOT PENDOWN"); return PENDOWN; }
(print|PRINT)                { printf("GOT PRINT"); return PRINT; }
(change_color|CHANGE_COLOR)  { printf("GOT CHANGE_COLOR"); return CHANGE_COLOR; }
(color|COLOR)                { printf("GOT COLOR"); return COLOR; }
(clear|CLEAR)                { printf("GOT CLEAR"); return CLEAR; }
(turn|TURN)                  { printf("GOT TURN"); return TURN; }
(loop|LOOP)                  { printf("GOT LOOP"); return LOOP; }
(move|MOVE)                  { printf("GOT MOVE"); return MOVE; }
[0-9]+\.[0-9]+               { printf("GOT NUMBERS"); return NUMBER; }
(end|END)                    { printf("GOT END"); return END; }
(save|SAVE)                  { printf("GOT SAVE"); return SAVE; }
\+                           { printf("GOT PLUS"); return PLUS; }
-                            { printf("GOT SUB"); return SUB; }
\*                           { printf("GOT MULT"); return MULT; }
\/                           { printf("GOT DIV"); return DIV; }
(goto|GOTO)                  { printf("GOT GOTO"); return GOTO; }
(where|WHERE)                { printf("GOT WHERE"); return WHERE; }
\$[a-z]                      { printf("GOT VARIABLES"); return VARIABLE; }


[ \t\r\n]			;
.			{ yyerror("Lexing Syntax error.\n"); } 

%%
