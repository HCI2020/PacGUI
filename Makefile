DOC_DIR=documents
DOC_SRC=$(DOC_DIR)/src

MD = $(wildcard $(DOC_SRC)/*.md)
MD_PDF = $(MD:$(DOC_SRC)/%.md=$(DOC_DIR)/%.pdf)

all: docs

docs: $(MD_PDF)

$(DOC_DIR)/%.pdf: $(DOC_SRC)/%.md
	pandoc -t pdf $< -o $@

#documents/pacman_intro.pdf: documents/src/pacman_intro.md
#	pandoc -t pdf $< -o $@
#
#documents/minutes.pdf: documents/src/minutes.md
#	pandoc -t pdf %< -o $@

clean: 
	rm $(MD_PDF)
