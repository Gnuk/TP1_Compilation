package analyse;

import java_cup.runtime.Symbol;
import java.io.*;

public class TP2Main {
	public static void main(String[] args) throws Exception { 
		TP2JFlex yy ; 
		if (args.length > 0)
			yy = new TP2JFlex(new FileInputStream(args[0]));
		else
			yy = new TP2JFlex(System.in) ;
		parser p = new parser (yy);
		Symbol result = p.parse( );
		System.out.println ("Evaluation = "+result.value);
	}
}

