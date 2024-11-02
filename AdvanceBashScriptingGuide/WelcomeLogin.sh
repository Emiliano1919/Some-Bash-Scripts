#!/bin/bash
printf 'Welcome!!, Long time no see \n\n' > Welcome.txt
{ date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S"; printf '\nThe current users are: \n \n'; } >> Welcome.txt
{ who -H; printf '\nThe system uptime is: \n\n'; uptime; } >> Welcome.txt
