all: output
	@pdflatex --output-directory=output report.tex
	@bibtex output/report
	@pdflatex --output-directory=output report.tex
	@pdflatex --output-directory=output report.tex

clean:
	-@rm -rf output

output:
	-@mkdir output

install_dependencies:
	sudo apt install texlive texlive-lang-portuguese texlive-bibtex-extra
