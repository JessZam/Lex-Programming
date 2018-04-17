/*
Name: Jesslyn Zamora
Assignment: 01_2
Prints the longest word in the file along with the amount of characters. 
To do this we the length of the matched string has to be greater than the amount.
The new amount is the length of the string. Then we just copy the string to the variable and print out.
*/

%{
int amount = 0;
char word_length[50];
%}

%%
[a-zA-Z]+	{if (yyleng > amount) {
			amount = yyleng;
			strcpy (word_length, yytext);
			}
		}
. ;
\n ;
%%

int main()
{
	yylex();
	printf("The longest word is \"%s\", with %d characters.\n", word_length, amount);
	return 0;
}
 
			
