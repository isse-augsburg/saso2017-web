
all: $(wildcard saso_htdocs/*.html)
	git diff --stat

saso_htdocs/%.html: templates/%.html $(wildcard templates/*.include.html)
	gcc -x c -E -P -nostdinc -D __$(shell echo $*)__ -traditional-cpp -o $@ $<