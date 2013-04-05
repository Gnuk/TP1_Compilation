package analyse;

import java_cup.runtime.Symbol; 
%%
%class TP2JFlex
%line
%column
%cup
%{eofval
return new Symbol(sym.EOF) ;
%eofval}
%%
[0-9]+ {return new Symbol(sym.ENTIER,yyline,yycolumn,
new Integer(yytext()));}
"+" {return new Symbol(sym.PLUS,yyline,yycolumn);}
"-" {return new Symbol(sym.MOINS,yyline,yycolumn);}
"*" {return new Symbol(sym.MULT, yyline,yycolumn);}
"/" {return new Symbol(sym.DIVIDE,yyline,yycolumn);}
"(" {return new Symbol(sym.PAR_G,yyline,yycolumn);}
")" {return new Symbol(sym.PAR_D,yyline,yycolumn);}
"mod" {return new Symbol(sym.MOD,yyline,yycolumn);}
";" {return new Symbol(sym.POINT_VIRGULE,yyline, yycolumn);}
"/*" ([^*]|[*][^/])* "*/" {System.out.println("Un commentaire détécté"); }
\n { ; /* on fait rien */ }
. { ; /* on fait rien */ }