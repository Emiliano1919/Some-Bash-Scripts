#!/bin/bash

# This is the PDF slicer for my assignment questions
# To use it you have to first install pdftk with brew or something else
# then just change the name of the original file and where you want to slice
# I'll code a better version later 
# Name of the original PDF
input_pdf="mas-i_tables.pdf"

# Use pdftk to slip
pdftk "$input_pdf" cat 3-3 output question1.pdf
pdftk "$input_pdf" cat 16-20 output question2.pdf
pdftk question1.pdf question2.pdf cat output merged_questions.pdf
rm question*.pdf
echo "Merged PDF saved as merged_questions.pdf"
