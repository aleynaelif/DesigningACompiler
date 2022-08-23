%{
    #include<stdio.h>
    int flag=0, flag1=0;
%}

%token NUMBER

%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

%left '&' '|' 

%left '<' '>' '='

%right '!' 


/* Rule Section */
%%

expression: E { if(flag1==1 && $$ == 1)
                    printf("\nTRUE\n\n");
                else if(flag1==1 && $$ == 0)
                    printf("\nFALSE\n\n");
                else
                printf("\nSonuc=%d\n",$$);};

E:E'+'E {$$=$1+$3;}

|E'-'E {$$=$1-$3;}

|E'*'E {$$=$1*$3;}

|E'/'E {if($3 != 0) $$ = $1 / $3;
        else { yyerror(); exit(0);}}

|E'%'E {$$=$1%$3;}

|E'>'E { $$=$1>$3;flag1=1;}

|E'<'E { $$=$1<$3;flag1=1;}

|E '<''=' E {$$=($1<=$4);flag1=1;}

|E '!''=' E {$$=($1!=$4);flag1=1;}

|E '>''=' E {$$=($1>=$4);flag1=1;}

|E '=''=' E {$$=($1==$4);flag1=1;}

|E'&'E	{ if (($1 == 1 || $1 == 0) && ($3 == 1 || $3 == 0)){
                    {$$=$1&$3;} 
                    flag1=1;
            }
            else{
                printf("\nGeçersiz ifade!!\n");
                exit(0);
            }
    }

|E'|'E	{ if (($1 == 1 || $1 == 0) && ($3 == 1 || $3 == 0)){
                    {$$=$1|$3;} 
                    flag1=1;
            }
            else{
                printf("\nGeçersiz ifade!!\n");
                exit(0);
            }}

|'('E')' {$$=$2;}

| NUMBER {$$=$1;}

;

%%

void main()
{
printf("\nİfadeyi giriniz:");

yyparse();
}

void yyerror(){
    printf("\nGeçersiz ifade!!\n");
    flag=1;
}
