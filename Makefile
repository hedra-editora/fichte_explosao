all:
	pandoc LIVRO.tex -o LIVRO.docx
	pandoc LIVRO.tex -o LIVRO.epub
editing:
	-sed -i 's/\\versal{/\\textsc{/g' *.tex
	-sed -i 's/\"-/-/g' *.tex
	-sed -i 's/\\chapterspecial{\(.*\)}{\(.*\)}{\(.*\)}/\\chapter{\1}\n\2\n\3/g' *.tex
	-sed -i 's/\([A-Z]\)\\,\([A-Z]\)\\,\([A-Z]\)\\,\([A-Z][a-z]\)/\1.\2.\3. \4/g' *.tex
	-sed -i 's/\([A-Z]\)\\,\([A-Z]\)\\,\([A-Z][a-z]\)/\1.\2. \3/g' *.tex
	-sed -i 's/\([A-Z]\)\\,\([A-Z][a-z]\)/\1. \2/g' *.tex
view:
	ebook-viewer LIVRO.epub
sigil:
	sigil LIVRO.epub
