PREFIX = /usr
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
