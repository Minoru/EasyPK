PREFIX = /usr
MANPREFIX = ${PREFIX}/share/man

install:
	@echo installing executable files to ${DESTDIR}${PREFIX}/bin
	@mkdir --parents ${DESTDIR}${PREFIX}/bin
	@cp --force pk ${DESTDIR}${PREFIX}/bin/
	@chmod 755 ${DESTDIR}${PREFIX}/bin/pk
	@cp --force unpk ${DESTDIR}${PREFIX}/bin/
	@chmod 755 ${DESTDIR}${PREFIX}/bin/unpk
	@echo installing manual pages to ${DESTDIR}${MANPREFIX}/man1
	@mkdir -p ${DESTDIR}${MANPREFIX}/man1
	@cp --force pk.1 ${DESTDIR}${MANPREFIX}/man1/
	@chmod 644 ${DESTDIR}${MANPREFIX}/man1/pk.1
	@cp --force unpk.1 ${DESTDIR}${MANPREFIX}/man1/
	@chmod 644 ${DESTDIR}${MANPREFIX}/man1/unpk.1

uninstall:
	@echo removing executable files from ${DESTDIR}${PREFIX}/bin
	@rm --force ${DESTDIR}${PREFIX}/bin/pk
	@rm --force ${DESTDIR}${PREFIX}/bin/unpk
	@echo removing manual pages from ${DESTDIR}${MANPREFIX}/man1
	@rm --force ${DESTDIR}${MANPREFIX}/man1/pk.1
	@rm --force ${DESTDIR}${MANPREFIX}/man1/unpk.1
.PHONY: install uninstall
# vim:noexpandtab:
