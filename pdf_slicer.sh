#!/bin/bash

# This is the PDF slicer for my assignment questions
# To use it you have to first install pdftk with brew or something else
# then just change the name of the original file and where you want to slice
# I'll code a better version later 
# Name of the original PDF
input_pdf="Assignment1.pdf"

# Use pdftk to slip
pdftk "$input_pdf" cat 1-2 output question1.pdf
pdftk "$input_pdf" cat 3-4 output question2.pdf
pdftk "$input_pdf" cat 5-8 output question3.pdf
pdftk "$input_pdf" cat 9-10 output question4.pdf
pdftk "$input_pdf" cat 11-11 output question5.pdf
pdftk "$input_pdf" cat 12-12 output question6.pdf
pdftk "$input_pdf" cat 13-13 output question7.pdf
pdftk "$input_pdf" cat 14-19 output question8.pdf
pdftk "$input_pdf" cat 20-25 output question9.pdf
pdftk "$input_pdf" cat 26-31 output question10.pdf
