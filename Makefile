DOC=index.html
OUT=public/

check: $(DOC)
	codespell $(DOC)

show:
	sensible-browser $(DOC)

publish:
	mkdir -p $(OUT)
	cp *.html $(OUT)
	cp -r css assets $(OUT)

clean:
	rm -rf $(OUT)
