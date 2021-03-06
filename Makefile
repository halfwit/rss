# rss - scripts to fetch and view RSS/ATOM feeds
# See included LICENSE file for copyright and license details

PREFIX ?= /usr/local

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -Rf updatefeeds ${DESTDIR}${PREFIX}/bin/updatefeeds
	@chmod 755 ${DESTDIR}${PREFIX}/bin/updatefeeds
	@cp -Rf rss.xslt ${DESTDIR}${PREFIX}/share/rss.xslt
	@chmod -R 755 ${DESTDIR}${PREFIX}/share/rss.xslt
	@cp -Rf rss ${DESTDIR}${PREFIX}/bin/rss
	@chmod 755 ${DESTDIR}${PREFIX}/bin/rss

.PHONY: install
