#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML><head><link rel="stylesheet" type="text/css" href="/main.css">  </head>"
echo  "<head></head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Welcome to Printer Demo!"
echo "</h2>"
echo "<ul>"
echo "<li>Please make sure that the printer is conncted to the Wireless SheevaPlug and that paper is available."
echo "<li>After ensuring the above things, click the below button to start printing."
echo "<li>A document consisting of Wireless SheevaPlug specifications will be printed out."
echo "</ul></div>"
echo "<div align=\"center\">"
echo "<form method=GET action=\"/cgi-bin/printed.cgi\">"
echo "<input type=submit value=\"Print the Document!\">"
echo  "</body>"
echo  "</HTML>"
