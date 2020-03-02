
all: docs

docs: documents/pacman_intro.pdf


documents/pacman_intro.pdf: documents/src/pacman_intro.md
	pandoc -t pdf documents/src/pacman_intro.md -o documents/pacman_intro.pdf

clean: 
	rm documents/pacman_intro.pdf
