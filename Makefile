build:
	cd dist && for i in `ls *.svg`; do svgo -i $$i; done
	cd dist && kuvia --no-min -o index.html -J index.js -C index.css *.svg

deploy:
	git subtree push --prefix dist origin gh-pages

