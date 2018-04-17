/*
Name: Jesslyn Zamora
Assignment: 01_1
Counts the amount of words in the file. Omits the periods. 
*/

%{
int words = 0;
%}

%%
[a-zA-z]* words++;
. ;
%%

int main()
{
yylex();
printf("\nNumber of words: %d \n", words);
return 0;
}
 
