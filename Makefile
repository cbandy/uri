.PHONY: check
check: bin/uri test/*.sh
	@./test/runner
