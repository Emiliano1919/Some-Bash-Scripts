#!/bin/bash

# This is the PDF slicer for my assignment questions
# To use it you have to first install pdftk with brew or something else
# then just change the name of the original file and where you want to slice
# I'll code a better version later 
# Name of the original PDF
input_pdf="Course_Notes18.pdf"

# Use pdftk to slip
pdftk "$input_pdf" cat 3-3 output question1.pdf
pdftk "$input_pdf" cat 7-15 output question2.pdf
pdftk "$input_pdf" cat 21-29 output question3.pdf
pdftk "$input_pdf" cat 31-41 output question4.pdf
pdftk "$input_pdf" cat 45-47 output question5.pdf
pdftk question1.pdf question2.pdf question3.pdf question4.pdf question5.pdf cat output Chap1to4.pdf
rm question*.pdf
echo "Merged PDF saved as Chap1to4.pdf"
