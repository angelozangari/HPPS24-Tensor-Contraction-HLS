main := report

ASSETS_DIR := assets
BUILD_DIR := build

.PHONY: all clean distclean

LTC = TEXINPUTS=.:$(ASSETS_DIR): pdflatex -interaction=nonstopmode -shell-escape -synctex=1 -output-directory=$(BUILD_DIR)
BIB = biber --input-directory $(BUILD_DIR) --output-directory=$(BUILD_DIR)

other_texs = $(wildcard $(ASSETS_DIR)/*.tex)

all: $(BUILD_DIR)/$(main).pdf

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/$(main).pdf: $(main).tex $(other_texs) | $(BUILD_DIR)
	$(LTC) $(main).tex
ifeq (,$(wildcard $(ASSETS_DIR)/*.bib))
	$(BIB) $(main)
endif
	$(LTC) $(main).tex
	$(LTC) $(main).tex
	$(LTC) $(main).tex

clean:
	@rm -rf $(BUILD_DIR)

distclean: clean
	@rm -f $(main).pdf