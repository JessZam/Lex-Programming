/*
Name: Jesslyn Zamora
Assignment: 01_4
Counts the number of positive/negative real numbers and integers there are in a file. 
*/

%{
int positive_num = 0, negative_num = 0, positive_real_num = 0, negative_real_num = 0;
%}

%%
[+]?[0-9]+ positive_num++;
[-][0-9]+ negative_num++;
[+]?[0-9]*\.[0-9]+ positive_real_num++;
[-][0-9]*\.[0-9]+ negative_real_num++;
%%

int main()
{
yylex();
printf("Postive integers: %d \n", positive_num);
printf("Negative integers: %d \n", negative_num);
printf("Positive real numbers: %d \n", positive_real_num);
printf("Negative real numbers: %d \n", negative_real_num);
return 0;
}

