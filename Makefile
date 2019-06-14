preview:
	grip README.md

shell-commands:
	@for f in $$(find ./roles -name '*.yml') ; do echo ; echo "$$f:"; grep "^## # " $$f ; done


clean:
	@rm -f *.retry
	@find . -name '*~' -exec rm {} \;
