%{
#include<stdio.h>
%}

%%
[0-9]+              printf("Number: %s\n", yytext);
[a-zA-Z]+           printf("Word: %s\n", yytext);
[+\-*/=]            printf("Operator: %s\n", yytext);
[(){};,]            printf("Special Symbol: %s\n", yytext);
[ \t\n]             ;
.                   ;
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
