#!/bin/bash

echo -e "Content-Type: text/html\n\n"
echo  "<HTML><head><link rel="stylesheet" type="text/css" href="/main.css">  </head>"
echo  "<head></head>"

echo "<body class=right>"

echo "<div align=\"center\"><h2>"
echo "Welcome to Printer Demo!"
echo "</h2>"
lp /usr/lib/cgi-bin/test.pdf 2> /tmp/printer.log > /dev/null &
sleep 2
echo "<div align=\"center\"><p>The document will be printing out by now.....Check the printer.</p></div>"

#ERROR_LOG=`cat /tmp/printer.log`
#if [ -z "$ERROR_LOG" ]
#then
#    echo "Please Collect your Printout"
#else
#    echo "$ERROR_LOG"
#fi

echo "<div align=\"center\">"
echo "<form method=GET action=\"/cgi-bin/printer.cgi\">"
echo "<input type=submit value=\"Go Back\">"
echo  "</body>"
echo  "</HTML>"
