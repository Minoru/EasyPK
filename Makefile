PREFIX = /usr
BINPREFIX = ${PREFIX}/bin
MANPREFIX = ${PREFIX}/share/man

check-dependencies:
	@echo -n 'checking for tar... '
	@echo `command -v tar || echo 'not found'`

	@echo -n 'checking for pv... '
	@echo `command -v pv || echo 'not found (no progressbar for you)'`

	@echo -n 'checking for gzip... '
	@echo `command -v gzip || echo 'not found'`

	@echo -n 'checking for pigz... '
	@echo `command -v pigz || echo 'not found'`

	@echo -n 'checking for bzip2... '
	@echo `command -v bzip2 || echo 'not found'`

	@echo -n 'checking for pbzip2... '
	@echo `command -v pbzip2 || echo 'not found'`

	@echo -n 'checking for xz... '
	@echo `command -v xz || echo 'not found'`

	@echo -n 'checking for pixz... '
	@echo `command -v pixz || echo 'not found'`

	@echo -n 'checking for 7zip... '
	@echo `command -v 7z || echo 'not found'`

install: check-dependencies
	@echo installing executable files to ${BINPREFIX}
	@mkdir -p ${BINPREFIX}
	@cp -f pk ${BINPREFIX}/
	@chmod 755 ${BINPREFIX}/pk
	@cp -f unpk ${BINPREFIX}/
	@chmod 755 ${BINPREFIX}/unpk
	@echo installing manual pages to ${MANPREFIX}
	@mkdir -p ${MANPREFIX}/man1
	@cp -f pk.1 ${MANPREFIX}/man1/
	@chmod 644 ${MANPREFIX}/man1/pk.1
	@cp -f unpk.1 ${MANPREFIX}/man1/
	@chmod 644 ${MANPREFIX}/man1/unpk.1

uninstall:
	@echo removing executable files from ${BINPREFIX}
	@rm -f ${BINPREFIX}/pk
	@rm -f ${BINPREFIX}/unpk
	@echo removing manual pages from ${MANPREFIX}
	@rm -f ${MANPREFIX}/man1/pk.1
	@rm -f ${MANPREFIX}/man1/unpk.1
.PHONY: install uninstall
# vim:noexpandtab:
