DOC=index.html
OUT=public/

check: $(DOC)
	codespell $(DOC)

show:
	sensible-browser $(DOC)

$(OUT)/index.html: index.html
	mkdir -p $(OUT)
	cp *.html $(OUT)
	cp -r css assets $(OUT)

build: $(OUT)/index.html

publish: $(OUT)/index.html
	rsync --delete -e ssh -rv  public/* $(REMOTE)

clean:
	rm -rf $(OUT)

.PHONY: build publish clean show check
