main := report

.PHONY: remove-build remove-all

ASSETS_DIR := assets
BUILD_DIR := build
LTC = TEXINPUTS=$(ASSETS_DIR): pdflatex -interaction=nonstopmode -shell-escape -synctex=1 -output-directory=$(BUILD_DIR)
BIB = biber --input-directory $(BUILD_DIR) --output-directory $(BUILD_DIR)

other_texs = $(filter-out $(main).tex, $(wildcard *.tex))

all: $(main).pdf

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(main).pdf: $(BUILD_DIR)/$(main).pdf
	cp $(BUILD_DIR)/$(main).pdf .

$(BUILD_DIR)/$(main).pdf: $(main).tex $(other_texs) $(ASSETS_DIR)/biblio.bib | $(BUILD_DIR)
	$(LTC) $(main).tex
ifeq (,$(wildcard $(ASSETS_DIR)/*.bib))
	$(BIB) $(main)
endif
	$(LTC) $(main).tex
	$(LTC) $(main).tex
	$(LTC) $(main).tex

remove-build:
	@rm -rf $(BUILD_DIR)

remove-all: remove-build
	@rm -f $(main).pdf