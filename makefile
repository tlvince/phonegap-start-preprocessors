jade=./node_modules/jade/bin/jade
coffee=./node_modules/coffee-script/bin/coffee
stylus=./node_modules/stylus/bin/stylus

all: compile

compile: clean
	mkdir -p www/js www/css
	$(jade) --pretty --out www src/index.jade
	$(coffee) --bare --output www/js --compile src/coffee/*
	$(stylus) --out www/css src/styl/index.styl
	cp src/config.xml www
	cp src/icon.png www
	cp -R src/img www
	cp -R src/res www
	cp lib/cordova-2.0.0.js www

clean:
	rm -rf www

.PHONY: compile clean
