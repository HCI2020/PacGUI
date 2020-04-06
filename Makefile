DOC_DIR=docs
DOC_SRC=$(DOC_DIR)/src

GDRIVE_DIR=$(DOC_DIR)/gdrive

MD = $(wildcard $(DOC_SRC)/*.md)
MD_PDF = $(MD:$(DOC_SRC)/%.md=$(DOC_DIR)/%.pdf)
MD_DOCX = $(MD:$(DOC_SRC)/%.md=$(GDRIVE_DIR)/%.docx)
MD_REQ = docs/src/personas.md docs/src/scenarios.md docs/src/usability_and_UX.md docs/src/usecase.md

all: docs gdrive

docs: $(MD_PDF) $(DOC_DIR)/requirements.pdf

gdrive: $(MD_DOCX)

$(DOC_DIR)/requirements.pdf: $(MD_REQ) 
	pandoc -t pdf $(MD_REQ) -o $@

$(DOC_DIR)/%.pdf: $(DOC_SRC)/%.md
	pandoc -t pdf $< -o $@

$(GDRIVE_DIR)/%.docx: $(DOC_SRC)/%.md
	pandoc -t docx $< -o $@

clean: 
	rm $(MD_PDF)
