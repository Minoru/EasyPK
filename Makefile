PREFIX = /usr
MANPREFIX = ${PREFIX}/share/man

install:
	@echo installing executable files to ${PREFIX}/bin
	@mkdir --parents ${PREFIX}/bin
	@cp --force pk ${PREFIX}/bin/
	@chmod 755 ${PREFIX}/bin/pk
	@cp --force unpk ${PREFIX}/bin/
	@chmod 755 ${PREFIX}/bin/unpk
	@echo installing manual pages to ${MANPREFIX}/man1
	@mkdir -p ${MANPREFIX}/man1
	@cp --force pk.1 ${MANPREFIX}/man1/
	@chmod 644 ${MANPREFIX}/man1/pk.1
	@cp --force unpk.1 ${MANPREFIX}/man1/
	@chmod 644 ${MANPREFIX}/man1/unpk.1

uninstall:
	@echo removing executable files from ${PREFIX}/bin
	@rm --force ${PREFIX}/bin/pk
	@rm --force ${PREFIX}/bin/unpk
	@echo removing manual pages from ${MANPREFIX}/man1
	@rm --force ${MANPREFIX}/man1/pk.1
	@rm --force ${MANPREFIX}/man1/unpk.1
.PHONY: install uninstall
# vim:noexpandtab:
