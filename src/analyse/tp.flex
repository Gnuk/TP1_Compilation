/***********************************************************************************
* Copyright (C) 2013, Jeremy Marois, Maryam Pilvar, Anthony Rey
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public License
* as published by the Free Software Foundation; either version 2
* of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
***********************************************************************************/

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