%{
#include <stdio.h>
#include <stdlib.h>
#include "gvlogo.tab.h"

%}

%%

;                            { printf("SEP"); return SEP; }
(penup|PENUP)                { printf("PENUP"); return PENUP; }
(pendown|PENDOWN)            { printf("PENDOWN"); return PENDOWN; }
(print|PRINT)                { printf("PRINT"); return PRINT; }
(change_color|CHANGE_COLOR)  { printf("CHANGE_COLOR"); return CHANGE_COLOR; }
(color|COLOR)                { printf("COLOR"); return COLOR; }
(clear|CLEAR)                { printf("CLEAR"); return CLEAR; }
(turn|TURN)                  { printf("TURN"); return TURN; }
(loop|LOOP)                  { printf("LOOP"); return LOOP; }
(move|MOVE)                  { printf("MOVE"); return MOVE; }
[0-9]+\.[0-9]+               { printf("NUMBERS"); return NUMBER; }
(end|END)                    { printf("END"); return END; }
(save|SAVE)                  { printf("SAVE"); return SAVE; }
\+                           { printf("PLUS"); return PLUS; }
-                            { printf("SUB"); return SUB; }
\*                           { printf("MULT"); return MULT; }
\/                           { printf("DIV"); return DIV; }
(goto|GOTO)                  { printf("GOTO"); return GOTO; }
(where|WHERE)                { printf("WHERE"); return WHERE; }
\$[a-z]                      { printf("VARIABLES"); return VARIABLE; }


[ \t\r\n]			;
.			{ yyerror("Lexing Syntax error.\n"); } 

%%
