/*
Name:Jesslyn Zamora
Assignment: 01_3
Program that counts the amount of vowels and consonants
Does not count whitespace characters
*/

%{
int vowels = 0, consonants = 0;
%}

%%
[aeiouAEIOU] vowels++;
[^aeiouAEIOU | ^\n\t] consonants++;
%%


int main()
{
yylex();
printf("\nNumber of vowels: %d \n", vowels);
printf("Number of consonants: %d \n", consonants);
return 0;
}


