# =========================
# Configuration
# =========================
DOC_NAME := main
TEX_DIR := docs
BUILD_DIR := ../build

LATEX := pdflatex
LATEX_FLAGS := -interaction=nonstopmode -halt-on-error

# =========================
# Targets
# =========================
.PHONY: all pdf clean

all: pdf

pdf:
	mkdir -p $(BUILD_DIR)
	cd $(TEX_DIR) && $(LATEX) $(LATEX_FLAGS) -output-directory=$(BUILD_DIR) $(DOC_NAME).tex
	cd $(TEX_DIR) && $(LATEX) $(LATEX_FLAGS) -output-directory=$(BUILD_DIR) $(DOC_NAME).tex

clean:
	rm -rf $(BUILD_DIR)
