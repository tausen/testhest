PANDOC=docker run --rm -v $(pwd):$(pwd) -u $(id -u):$(id -g) -w $(pwd) pandoc/latex

all: main1.pdf main2.pdf

%.pdf: %.md
	${PANDOC} $< -o $@

clean:
	-@rm *.pdf 2>/dev/null

.PHONY: clean
