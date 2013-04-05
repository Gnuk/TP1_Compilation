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

