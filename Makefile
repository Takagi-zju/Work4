all: ./fractal/mandelbrot.cpp ./bmp/bitmap.cpp
	g++ -o test ./fractal/mandelbrot.cpp ./bmp/bitmap.cpp -std=c++11
clean:
	rm picture1.bmp picture2.bmp picture3.bmp report.pdf
report:
	xelatex report.tex
	bibtex report.aux
	xelatex report.tex
	xelatex report.tex
