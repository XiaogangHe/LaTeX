filename=test

all: pdf read

pdf: 
	pdflatex ${filename}.tex	

read:
	okular ${filename}.pdf &

aread:
	acroread ${filename}.pdf

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg}
