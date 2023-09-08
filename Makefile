TEX_MAIN = notes.tex
NOTES_PDF = notes.pdf
NOTE_FILES = $(wildcard notes/*)
IMAGES = $(wildcard images/*)

all: ${NOTES_PDF}

notes: ${NOTES_PDF}

${NOTES_PDF}: ${TEX_MAIN} ${NOTE_FILES} ${IMAGES}
	latexmk -pdf ${TEX_MAIN}

clean:
	latexmk -C
