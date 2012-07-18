/*
 *  tableBuilder.cpp
 *  console
 *
 *  Created by Jeffrey Popyack on 7/16/12.
 *  Copyright 2012 __MyCompanyName__. All rights reserved.
 *
 *  Good old __MyCompanyName__
 *
 */

#include <iostream>
#include <fstream>
#include <string>
using namespace std ;

int main(void)
{
	ifstream infile ;

	cout << "Table Builder" << endl << endl ;
	string filename = "userids.txt" ;
	ifstream fin(filename.c_str()) ;
	if( !(fin.good()) )
	{
		cout << filename << " not found " << endl ;
		return 0 ;
	}

	ofstream fout("classLinks.html") ;
	fout << "<html>\n"
	     << "<head>\n"
	     << "  <title>\n    DUCA Class Links\n  </title>\n"
	     << "</head>\n\n" ;
	fout << "<body>\n<p>The following classmates have shared links with you:</p>" << endl ;
	fout << "<blockquote>\n" ;
	fout << "<table BORDER=1 BORDERCOLOR=#333333 CELLPADDING=4 CELLSPACING=0>\n" ;
	
	
	string userid ;
	while (fin >> userid) 
	{
		filename = userid + ".txt" ;
		cout << filename << ":" << endl ;
		infile.open(filename.c_str());
		if( !(infile.good()) )
			cout << filename << " not found " << endl ;
		else
		{
			fout << "  <tr>\n" ;
			string line ;
			while ( getline(infile,line) )
			{
				cout << "  " << line << endl ;
				fout << "    <td" ;
				size_t pos = line.find("\t") ;
				while ( pos != string::npos )
				{
					string part = line.substr(0,pos);
					line = line.substr(pos+1) ;
					fout << ">" << part << "</td>\n    <td" ;
					pos = line.find("\t") ;
				}
				fout << " BGCOLOR=#FFFF99>" ;
				fout << "<a href=\"" << line << "\" TARGET=\"_" << userid << "\">" << line << "</a></td>\n" ;
			}
			fout << "  </tr>\n" ;
		}
		cout << endl ;
		infile.close() ;
		infile.clear() ;
	}
	fout << "  <tr>\n" ;
	fout << "</table>\n" ;
	fout << "</blockquote>\n" ;
	fout << "</body>\n" ;
	fout << "</html>\n" ;
	fout.close() ;
	fin.close() ;
	
	cout << "Done." << endl ;
	return 0 ;
}