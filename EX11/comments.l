%{
#include<stdio.h>
%}

%%
"//".*                  printf("Single Line Comment\n");
"/*"([^*]|\*+[^*/])*\*+"/"   printf("Multi Line Comment\n");
.                       ;
\n                      ;
%%

int main()
{
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
