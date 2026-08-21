#include <stdio.h>
#include <string.h>

int main()
{
    char op, arg1[10], arg2[10], result[10];

    printf("Enter Three Address Code (Example: a=b+c)\n");
    printf("Enter Expression: ");
    scanf("%s", result);

    arg1[0] = result[2];
    arg1[1] = '\0';

    op = result[3];

    arg2[0] = result[4];
    arg2[1] = '\0';

    printf("\nGenerated Target Code:\n");

    printf("MOV R0, %s\n", arg1);

    switch(op)
    {
        case '+':
            printf("ADD R0, %s\n", arg2);
            break;

        case '-':
            printf("SUB R0, %s\n", arg2);
            break;

        case '*':
            printf("MUL R0, %s\n", arg2);
            break;

        case '/':
            printf("DIV R0, %s\n", arg2);
            break;

        default:
            printf("Invalid Operator\n");
            return 0;
    }

    printf("MOV %c, R0\n", result[0]);

    return 0;
}