package Analizadores;
import Gui.Menu;
import static Analizadores.Oc.*;
import java_cup.runtime.Symbol;

%% //separador de area

/* opciones y declaraciones de jflex */

%public
%class EntradaLexico
%cup
%cupdebug
%line
%column

separadores = [ |\n|\r|\t]
NUMERO = [0-7]




%{
StringBuilder string = new StringBuilder();
	
	private Symbol symbol(int type){
		return new Symbol(type, yyline+1, yycolumn+1);
	}
	private Symbol symbol(int type, Object value){
		return new Symbol(type, yyline+1, yycolumn+1,value);
	}


%}
%% // separador de areas

/* reglas lexicas */
<YYINITIAL> {
	{NUMERO}		{return symbol(NUMERO,yytext());}
	{separadores}   	{}

	[^]			{System.out.println("Error lexema: "+yytext());}
}
	<<EOF>>                 {return symbol(EOF);}

