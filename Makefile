TEX_MAIN = notes.tex
NOTES_PDF = notes.pdf

all: ${NOTES_PDF}

notes: ${NOTES_PDF}

${NOTES_PDF}: ${TEX_MAIN}
	latexmk -pdf ${TEX_MAIN}

clean:
	latexmk -C
