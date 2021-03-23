help:	## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'



build: 	## install npm and transpile typescript to the /dist folder
	npm ci
	tsc



watch: 	## watch for code changes and transpile as we go
	tsc --watch



start: 	## run the server
	node ./dist/index.js