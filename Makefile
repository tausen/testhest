PANDOC=docker run --rm -v ${GITHUB_WORKSPACE}:${GITHUB_WORKSPACE}) -u $(id -u):$(id -g) -w ${GITHUB_WORKSPACE} pandoc/latex

all: main1.pdf main2.pdf

%.pdf: %.md
	${PANDOC} $< -o $@

clean:
	-@rm *.pdf 2>/dev/null

.PHONY: clean
