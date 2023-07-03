all: export
	sed -f replace.sed iptwrap.bash.in > iptwrap.bash
	chmod +x iptwrap.bash

export: build
	cat iptablesdryrun.so | gzip | xxd -p > iptablesdryrun.so.hex

build:
	gcc -O3 -funroll-loops -Wall -D_FORTIFY_SOURCE=2 -Wno-pointer-sign -shared -fPIC iptablesdryrun.so.c -o iptablesdryrun.so

clean:
	rm -f iptablesdryrun.so.hex
	rm -f iptablesdryrun.so
	rm -f iptwrap.bash

