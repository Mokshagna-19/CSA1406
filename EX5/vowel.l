%{
#include<stdio.h>
%}

%%
[aAeEiIoOuU]   { printf("Vowel\n"); }
.              { printf("Not a Vowel\n"); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a character: ");
    yylex();
    return 0;
}
