PANDOC=docker run --rm -v ${GITHUB_WORKSPACE}:${GITHUB_WORKSPACE} -w ${GITHUB_WORKSPACE} pandoc/latex
#PANDOC=pandoc

all: build/main1.pdf build/main2.pdf

build/%.pdf: %.md
	${PANDOC} $< -o $@

clean:
	-@rm *.pdf 2>/dev/null

.PHONY: clean
