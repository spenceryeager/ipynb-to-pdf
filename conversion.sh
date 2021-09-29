#!/bin/bash

# Jupyter and wkhtmltopdf needed.

echo "Converting notebook"

jupyter nbconvert --execute --to html *.ipynb
#converts to html. This retains image placement a bit better than 
# direct conversion to PDF I've found

wkhtmltopdf --enable-local-file-access *.html convert.pdf
#converts to html. local access enabled to include pictures.

rm *.html
echo "Conversion complete"

