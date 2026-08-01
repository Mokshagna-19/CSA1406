%{
#include<stdio.h>
%}

%%
"//".*                          { printf("Single Line Comment\n"); }
"/*"([^*]|\*+[^*/])*\*+"/"      { printf("Multi Line Comment\n"); }
.|\n                            ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a C Comment:\n");
    yylex();
    return 0;
}
