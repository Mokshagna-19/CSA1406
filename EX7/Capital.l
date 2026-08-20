%{
#include<stdio.h>
%}

%%
[A-Z]   printf("%s is Capital\n", yytext);
.       ;
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
